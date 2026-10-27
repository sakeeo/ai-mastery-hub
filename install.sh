#!/usr/bin/env bash
# Memasang satu atau semua skill dari repo ini ke direktori skill agent.
#
# Setiap folder di skills/ yang berisi SKILL.md dianggap satu skill. Tanpa
# --skill, semua skill dipasang. Target default DSH (~/.dsh/skills). Pakai
# --claude untuk Claude Code (~/.claude/skills), atau --agents untuk Codex CLI
# dan agent lain yang membaca standar .agents/skills.
#
# Folder ref/ tidak pernah disalin.

set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_ROOT="$REPO/skills"
TARGET="dsh"
PROJECT=0
PROJECT_PATH=""
LIST=0
SELECTED_RAW=""

usage() {
    cat <<'EOF'
Pemakaian: ./install.sh [opsi]

  -s, --skill NAME   Pasang skill tertentu. Bisa diulang. Default: semua skill
  -l, --list         Tampilkan skill yang tersedia, lalu keluar
  -p, --project      Pasang ke dalam project, bukan direktori user
      --path DIR     Root project tujuan saat memakai --project (default: direktori ini)
      --claude       Target Claude Code (~/.claude/skills)
      --agents       Target Codex CLI dan agent lain yang membaca ~/.agents/skills
  -h, --help         Tampilkan bantuan ini

Target default adalah DSH (~/.dsh/skills).

Contoh:
  ./install.sh
  ./install.sh --skill web-design-anti-ai
  ./install.sh --agents --project --path ~/kerja/landing-page
EOF
}

while [ $# -gt 0 ]; do
    case "$1" in
        -s|--skill|--name)
            [ $# -ge 2 ] || { echo "opsi $1 butuh argumen" >&2; exit 2; }
            SELECTED_RAW="${SELECTED_RAW}${2}"$'\n'
            shift 2
            ;;
        -l|--list) LIST=1; shift ;;
        -p|--project) PROJECT=1; shift ;;
        --path|--project-path)
            [ $# -ge 2 ] || { echo "opsi $1 butuh argumen" >&2; exit 2; }
            PROJECT_PATH="$2"
            shift 2
            ;;
        --claude)
            [ "$TARGET" = "dsh" ] || { echo "pilih salah satu: --claude atau --agents" >&2; exit 2; }
            TARGET="claude"
            shift
            ;;
        --agents)
            [ "$TARGET" = "dsh" ] || { echo "pilih salah satu: --claude atau --agents" >&2; exit 2; }
            TARGET="agents"
            shift
            ;;
        -h|--help) usage; exit 0 ;;
        *) echo "opsi tidak dikenal: $1" >&2; usage >&2; exit 2 ;;
    esac
done

if [ -n "$PROJECT_PATH" ] && [ "$PROJECT" -ne 1 ]; then
    echo "--path hanya dipakai bersama --project" >&2
    exit 2
fi

if [ ! -d "$SKILLS_ROOT" ]; then
    echo "folder skills tidak ditemukan di $SKILLS_ROOT. Jalankan skrip ini dari akar repo." >&2
    exit 1
fi

ALL=()
for d in "$SKILLS_ROOT"/*/; do
    [ -d "$d" ] || continue
    [ -f "$d/SKILL.md" ] || continue
    ALL+=("$(basename "$d")")
done

if [ ${#ALL[@]} -eq 0 ]; then
    echo "tidak ada skill di $SKILLS_ROOT. Setiap skill butuh SKILL.md." >&2
    exit 1
fi

for name in "${ALL[@]}"; do
    declared="$(sed -n 's/^name:[[:space:]]*//p' "$SKILLS_ROOT/$name/SKILL.md" | head -n 1 | tr -d '\r')"
    declared="$(printf '%s' "$declared" | sed 's/[[:space:]]*$//')"
    declared="${declared#\"}"
    declared="${declared%\"}"
    if [ -z "$declared" ]; then
        echo "frontmatter 'name' tidak ditemukan di $SKILLS_ROOT/$name/SKILL.md" >&2
        exit 1
    fi
    if [ "$declared" != "$name" ]; then
        echo "frontmatter name '$declared' tidak sama dengan nama folder '$name'" >&2
        exit 1
    fi
done

if [ "$LIST" -eq 1 ]; then
    echo "Skill di $SKILLS_ROOT:"
    for name in "${ALL[@]}"; do
        echo "  $name"
    done
    exit 0
fi

if [ -z "$SELECTED_RAW" ]; then
    set -- "${ALL[@]}"
else
    set -f
    set -- $SELECTED_RAW
    set +f
fi

for name in "$@"; do
    found=0
    for known in "${ALL[@]}"; do
        if [ "$known" = "$name" ]; then
            found=1
            break
        fi
    done
    if [ "$found" -ne 1 ]; then
        echo "skill '$name' tidak ada. Pilihan: ${ALL[*]}" >&2
        exit 2
    fi
done

case "$TARGET" in
    claude) CONTAINER=".claude" ;;
    agents) CONTAINER=".agents" ;;
    *)      CONTAINER=".dsh" ;;
esac

if [ "$PROJECT" -eq 1 ]; then
    root="${PROJECT_PATH:-$PWD}"
    if [ ! -d "$root" ]; then
        echo "folder project tidak ada: $root" >&2
        exit 1
    fi
    root="$(cd "$root" && pwd)"
    BASE="$root/$CONTAINER"
    SCOPE="project $TARGET ($root)"
else
    case "$TARGET" in
        claude) BASE="$HOME/.claude" ;;
        agents) BASE="$HOME/.agents" ;;
        *)
            BASE="${DSH_HOME:-$HOME/.dsh}"
            # DSH_HOME kadang berisi path gaya Windows (C:\Users\...). Di Git Bash,
            # ubah ke bentuk /c/Users/... supaya mkdir, cp, dan hash konsisten.
            case "$BASE" in
                [A-Za-z]:[\\/]*)
                    if command -v cygpath >/dev/null 2>&1; then
                        BASE="$(cygpath -u "$BASE")"
                    fi
                    ;;
            esac
            ;;
    esac
    SCOPE="user $TARGET"
fi

SKILLS_DEST="$BASE/skills"

# sha256sum menandai nama berkas yang memuat backslash dengan awalan "\",
# jadi digest dibersihkan dari awalan itu.
hash_file() {
    if command -v sha256sum >/dev/null 2>&1; then
        sha256sum "$1" | cut -d' ' -f1 | sed 's/^\\//'
    elif command -v shasum >/dev/null 2>&1; then
        shasum -a 256 "$1" | cut -d' ' -f1 | sed 's/^\\//'
    else
        echo ""
    fi
}

canverify=1
mismatch_total=0
total_files=0

for name in "$@"; do
    src="$SKILLS_ROOT/$name"
    dest="$SKILLS_DEST/$name"

    if [ -d "$dest" ]; then
        status="memperbarui"
    else
        status="memasang"
    fi
    echo "$status skill '$name' ($SCOPE)"
    echo "  dari : $src"
    echo "  ke   : $dest"

    files=(SKILL.md)
    if [ -f "$src/README.md" ]; then files+=(README.md); fi
    if [ -f "$REPO/LICENSE" ]; then files+=(LICENSE); fi
    if [ -d "$src/references" ]; then
        while IFS= read -r -d '' f; do
            files+=("references/${f#"$src/references/"}")
        done < <(find "$src/references" -type f -print0)
    fi

    mkdir -p "$dest"

    mismatch=0
    for rel in "${files[@]}"; do
        src_file="$src/$rel"
        if [ "$rel" = "LICENSE" ]; then
            src_file="$REPO/LICENSE"
        fi
        mkdir -p "$(dirname "$dest/$rel")"
        cp -f "$src_file" "$dest/$rel"

        a="$(hash_file "$src_file")"
        if [ -z "$a" ]; then
            canverify=0
        else
            b="$(hash_file "$dest/$rel")"
            if [ "$a" != "$b" ]; then
                echo "peringatan: isi berbeda setelah salin: $rel" >&2
                mismatch=$((mismatch + 1))
            fi
        fi
    done

    echo "  ${#files[@]} berkas disalin, $((${#files[@]} - mismatch)) identik."
    echo ""
    total_files=$((total_files + ${#files[@]}))
    mismatch_total=$((mismatch_total + mismatch))
done

echo "$# skill diproses ($total_files berkas) di $SKILLS_DEST."
if [ "$canverify" -eq 0 ]; then
    echo "sha256sum/shasum tidak tersedia, isi tidak diperiksa."
fi
if [ "$mismatch_total" -ne 0 ]; then
    exit 1
fi

echo "Panggil dengan namanya di chat, atau biarkan agent memilihnya saat tugasnya cocok."
