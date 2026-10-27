# AI mastery hub

Kumpulan skill [Agent Skills](https://agentskills.io) untuk membangun halaman web: desain antarmuka, copywriting, dan SEO on-page. Setiap skill berdiri sendiri: folder sendiri, `SKILL.md` sendiri, referensi sendiri. Pemasang di akar repo membaca semua folder di `skills/`, lalu memasang satu atau semuanya ke direktori yang dibaca agent.

## Daftar skill

| Skill | Dipakai untuk | Isi |
|---|---|---|
| [`web-design-anti-ai`](skills/web-design-anti-ai/) | Warna, tipografi, layout, radius, spacing, state, motion, gambar, kode, aksesibilitas | `SKILL.md`, dua referensi, README |
| [`copywriting-anti-ai`](skills/copywriting-anti-ai/) | Headline, subhead, CTA, microcopy, bukti, pola Bahasa Indonesia | `SKILL.md`, dua referensi, README |
| [`seo-onpage`](skills/seo-onpage/) | Keyword, title, meta description, slug, heading, alt, internal link, checklist publish | `SKILL.md`, dua referensi, README |

Desain dan copy pernah digabung dalam satu skill. Sekarang dipisah supaya bisa dipakai sendiri-sendiri. Halaman yang butuh keduanya memasang dua-duanya; masing-masing skill menyebut pembagian kerjanya.

## Susunan repo

```
skills/
  web-design-anti-ai/
    SKILL.md            Pintu masuk skill
    README.md           Penjelasan untuk manusia
    references/         Aturan lengkap per topik
  copywriting-anti-ai/
    SKILL.md
    README.md
    references/
  seo-onpage/
    SKILL.md
    README.md
    references/
ref/                    Bahan riset lokal, diabaikan git
install.ps1             Pemasang Windows
install.sh              Pemasang macOS dan Linux
LICENSE
```

Satu skill satu folder. Nama folder harus sama dengan `name` di frontmatter `SKILL.md`, karena pemasang memakai nama itu dan agent memanggil skill dengan nama itu. Bahan riset lokal boleh disimpan di `ref/` pada akar repo atau di `skills/<nama>/ref/`; keduanya diabaikan git.

## Cara pasang

Tanpa opsi tambahan, pemasang memasang semua skill untuk DSH di level user.

**Semua skill.** Jalankan `.\install.ps1` di Windows atau `./install.sh` di macOS dan Linux. Skrip menyalin setiap folder di `skills/` ke `~/.dsh/skills/<nama>`.

**Satu skill saja.** `.\install.ps1 -Skill seo-onpage` atau `./install.sh --skill seo-onpage`. Beberapa nama bisa dipisah koma. Opsi `-List` dan `--list` menampilkan nama yang tersedia.

**Claude Code atau Codex.** Tambah `-Claude` untuk `~/.claude/skills`, atau `-Agents` untuk `~/.agents/skills`. Di macOS dan Linux, `--claude` dan `--agents`.

**Satu project saja.** Tambah `-Project -Path <folder>` atau `--project --path <folder>`. Tanpa `-Path`, pemasangan memakai direktori kerja saat ini.

Kedua skrip menyalin `SKILL.md`, `README.md`, `LICENSE`, dan seluruh isi `references/`, lalu membandingkan hash setiap berkas setelah salin. Folder `ref/` tidak pernah disalin.

Kalau PowerShell menolak skrip yang belum ditandatangani, jalankan lewat proses yang sama dengan `powershell -NoProfile -ExecutionPolicy Bypass -File .\install.ps1`, lalu tambahkan opsi pemasangan di belakangnya.

## Menambah skill baru

Buat folder `skills/<nama>/` berisi `SKILL.md` dengan frontmatter `name` dan `description`. Isi `name` dengan nama folder. Tambahkan `references/` kalau aturannya panjang, dan `README.md` kalau perlu penjelasan untuk manusia. Pemasang menemukan folder baru tanpa diubah.

```markdown
---
name: nama-skill
description: Pekerjaan yang disasar, plus kapan skill ini tidak dipakai.
---

# Judul
```

`description` menentukan apakah agent memilih skill ini tanpa dipanggil. Tulis pekerjaan dan batasnya, bukan daftar fitur.

## Kompatibilitas harness

| Harness | Folder yang dibaca | Pasang dengan |
|---|---|---|
| DSH | `~/.dsh/skills/<nama>/`, `<repo>/.dsh/skills/`, juga `~/.agents/skills/` | `.\install.ps1` atau `./install.sh` |
| Claude Code | `~/.claude/skills/<nama>/`, `<repo>/.claude/skills/` | `-Claude` atau `--claude` |
| Codex CLI | `~/.agents/skills/<nama>/`, `<repo>/.agents/skills/` | `-Agents` atau `--agents` |

Codex membaca `.agents/skills`, bukan `.codex/skills`. Karena DSH juga membaca `~/.agents/skills`, satu pemasangan di sana melayani DSH dan Codex sekaligus. Kalau Anda juga memasang di `~/.dsh/skills`, skill yang sama muncul dari dua lokasi.

## Lisensi

MIT. Pakai bebas untuk proyek pribadi maupun komersial: ubah, gabungkan ke aturan sendiri, sebarkan, atau jual. Satu syaratnya hanya menyertakan notice hak cipta yang ada di [LICENSE](LICENSE).
