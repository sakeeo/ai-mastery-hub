# Web Design & Copywriting Anti-AI

Skill untuk membangun halaman web yang tidak terbaca sebagai hasil mesin: landing page, pricing, portofolio, hero section, beserta headline dan CTA-nya.

Isinya dua set aturan yang digabung jadi satu alur kerja. Satu untuk desain (warna, tipografi, layout, radius dan elevasi, spacing, state, motion, gambar, kode, aksesibilitas). Satu untuk copy (diksi, ritme kalimat, struktur, format, bukti, pola Bahasa Indonesia).

## Masalah yang disasar

Situs terasa "AI" jarang karena jelek. Penyebabnya lebih membosankan: setiap pilihan diambil dari nilai paling umum, mulai dari indigo sebagai aksen, Inter tanpa skala, hero center dengan dua tombol, sampai gradien biru ke ungu. Teks terasa "AI" karena alasan yang sama di lapis lain: kata besar tanpa angka, paragraf yang panjangnya seragam, penutup yang merangkum tanpa menambah apa pun.

Setiap aturan di sini menuntut satu hal yang sama: elemen atau kalimat harus punya alasan yang bisa diucapkan. Bukan menukar satu default dengan default lain.

## Isi repo

```
SKILL.md                  Alur kerja gabungan, daftar terlarang, gate cepat, prompt block
install.ps1               Pemasang untuk Windows (user atau per project)
install.sh                Pemasang untuk macOS dan Linux
references/web-design.md  Aturan desain lengkap + gate skor 12 baris
references/copywriting.md Aturan copy lengkap + gate skor 14 baris
references/sumber.md      Asal setiap angka yang dipakai di repo ini
```

`SKILL.md` adalah pintu masuk. Dua file referensi dibaca sesuai kebutuhan, bukan sekaligus.

## Cara pakai

**Sebagai skill agent.** Jalankan `.\install.ps1` untuk memasang ke `~/.dsh/skills`, yang berlaku di semua project di mesin Anda. Untuk satu project saja, pakai `.\install.ps1 -Project -Path <folder>`, yang menulis ke `<folder>\.dsh\skills`. Di macOS dan Linux, `./install.sh` melakukan hal yang sama dengan opsi `--project` dan `--path`. Kedua skrip menyalin `SKILL.md` beserta `references/`, lalu memeriksa hash setiap berkas setelah menyalin. Untuk agent lain, letakkan folder ini di direktori skill-nya; strukturnya mengikuti konvensi `SKILL.md` dengan frontmatter `name` dan `description` yang umum dipakai Claude Code, DSH, dan agent lain yang mendukung skill berbasis folder.

**Sebagai aturan proyek.** Ambil blok di bagian "Prompt block" pada `SKILL.md` dan tempel apa adanya ke `CLAUDE.md`, `.cursorrules`, atau custom instructions. Blok itu merangkum larangan dan angka wajib yang paling sering dilanggar.

**Sebagai spesifikasi manusia.** Baca `SKILL.md` sampai bagian audit, lalu buka referensi saat butuh angka spesifik: skala tipe, kontras, durasi motion, batas hedge, atau pola kalimat Indonesia.

## Dua hal yang sering disalahpahami

**Satu ciri bukan bukti.** Ungu dipakai sepertiga situs top. Inter dengan type system yang benar dipakai seperempatnya. Dua angka itu diukur pada 202 situs top, rinciannya di [references/sumber.md](references/sumber.md). Em dash yang dipakai sesekali adalah tanda penulis yang peduli tanda baca. Yang jadi bukti adalah bundel default tanpa satu pun keputusan pengompensasi.

## Pengecualian yang dicatat

H1 di README ini memakai Title Case karena itu nama proyek di GitHub, bukan heading di dalam dokumen. Aturan sentence case tetap berlaku untuk heading lain.

**Aturan ini lantai, bukan plafon.** Kalau sebuah aturan menghalangi keputusan yang lebih baik dan bisa dipertahankan, tulis pengecualiannya di file brand. Jangan melanggarnya diam-diam, dan jangan memakainya untuk menuduh penulis non-native atau proyek yang memang memilih gaya umum.

## Skor

Audit memakai skor 0–2 per baris, makin rendah makin baik, dengan 12 baris untuk desain dan 14 baris untuk copy. Lulus jika skor desain ≤ 6 dari 24, skor copy ≤ 8 dari 28, dan tidak ada satu pun pelanggaran daftar terlarang, sebab skor yang rendah tidak menolong apa pun kalau halaman masih memuat testimoni karangan dan angka yang tidak bisa ditunjuk sumbernya. Alat ini untuk diagnosis, bukan bukti.

## Lisensi

MIT. Pakai bebas untuk proyek pribadi maupun komersial: ubah, gabungkan ke aturan sendiri, sebarkan, atau jual. Satu syaratnya hanya menyertakan notice hak cipta yang ada di [LICENSE](LICENSE).

