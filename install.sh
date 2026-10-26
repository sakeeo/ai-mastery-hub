#!/usr/bin/env bash
# Memasang skill web-design-anti-ai ke direktori skill agent.
#
# Target default DSH (~/.dsh/skills). Pakai --claude untuk Claude Code
# (~/.claude/skills), atau --agents untuk Codex CLI dan agent lain yang
# membaca standar .agents/skills.
#
# Folder ref/ tidak pernah disalin.

set -euo pipefail

NAME="web-design-anti-ai"
PROJECT=0
TARGET="dsh"
PROJECT_PATH=""

usage() {
    cat <<'EOF'
Pemakaian: ./install.sh [opsi]

  -p, --project      Pasang ke dalam project, bukan direktori user
      --path DIR     Root project tujuan saat memakai --project (default: direktori ini)
      --claude       Target Claude Code (~/.claude/skills)
      --agents       Target Codex CLI dan agent lain yang membaca ~/.agents/skills
  -n, --name NAME    Nama folder skill tujuan (default: web-design-anti-ai)
  -h, --help         Tampilkan bantuan ini

Target default adalah DSH (~/.dsh/skills).

Contoh:
  ./install.sh
  ./install.sh --claude
  ./install.sh --agents --project --path ~/kerja/landing-page
EOF
}

while [ $# -gt 0 ]; do
    case "$1" in
        -p|--project) PROJECT=1; shift ;;
        --path|--project-path)
            [ $# -ge 2 ] || { echo "opsi $1 butuh argumen" >&2; exit 2; }
            PROJECT_PATH="$2"; shift 2 ;;
        --claude)
            [ "$TARGET" = "dsh" ] || { echo "pilih salah satu: --claude atau --agents" >&2; exit 2; }
            TARGET="claude"; shift ;;
        --agents)
            [ "$TARGET" = "dsh" ] || { echo "pilih salah satu: --claude atau --agents" >&2; exit 2; }
            TARGET="agents"; shift ;;
        -n|--name)
            [ $# -ge 2 ] || { echo "opsi $1 butuh argumen" >&2; exit 2; }
            NAME="$2"; shift 2 ;;
        -h|--help) usage; exit 0 ;;
        *) echo "opsi tidak dikenal: $1" >&2; usage >&2; exit 2 ;;
    esac
done

if [ -n "$PROJECT_PATH" ] && [ "$PROJECT" -ne 1 ]; then
    echo "--path hanya dipakai bersama --project" >&2
    exit 2
fi

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ ! -f "$SRC_DIR/SKILL.md" ]; then
    echo "SKILL.md tidak ditemukan di $SRC_DIR. Jalankan skrip ini dari folder repo skill." >&2
    exit 1
fi

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
    DEST="$root/$CONTAINER/skills/$NAME"
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
    DEST="$BASE/skills/$NAME"
    SCOPE="user $TARGET"
fi

files=(SKILL.md README.md LICENSE)
if [ -d "$SRC_DIR/references" ]; then
    for f in "$SRC_DIR"/references/*.md; do
        [ -e "$f" ] || continue
        files+=("references/$(basename "$f")")
    done
fi

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

if [ -d "$DEST" ]; then
    echo "memperbarui skill '$NAME' ($SCOPE)"
else
    echo "memasang skill '$NAME' ($SCOPE)"
fi
echo "  dari : $SRC_DIR"
echo "  ke   : $DEST"

mkdir -p "$DEST/references"

for file in "${files[@]}"; do
    mkdir -p "$DEST/$(dirname "$file")"
    cp -f "$SRC_DIR/$file" "$DEST/$file"
done

mismatch=0
canverify=1
for file in "${files[@]}"; do
    a="$(hash_file "$SRC_DIR/$file")"
    if [ -z "$a" ]; then canverify=0; break; fi
    b="$(hash_file "$DEST/$file")"
    if [ "$a" != "$b" ]; then
        echo "peringatan: isi berbeda setelah salin: $file" >&2
        mismatch=$((mismatch + 1))
    fi
done

echo ""
if [ "$canverify" -eq 0 ]; then
    echo "${#files[@]} berkas disalin. sha256sum/shasum tidak tersedia, isi tidak diperiksa."
    exit 0
fi
echo "${#files[@]} berkas disalin, $((${#files[@]} - mismatch)) identik."
[ "$mismatch" -eq 0 ] || exit 1

echo "Panggil dengan namanya di chat, atau biarkan agent memilihnya saat tugasnya menyentuh desain dan copy."
