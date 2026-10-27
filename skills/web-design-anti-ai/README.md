# Web design anti-AI

Skill untuk membangun halaman web yang tidak terbaca sebagai hasil mesin: landing page, pricing, portofolio, hero section, dan halaman produk.

Fokusnya lapis visual: warna, tipografi, layout, radius dan elevasi, spacing, state, motion, gambar, ikon, kode, dan aksesibilitas. Aturan copy dipisah ke skill `copywriting-anti-ai`.

## Masalah yang disasar

Situs terasa "AI" jarang karena jelek. Penyebabnya lebih membosankan: setiap pilihan diambil dari nilai paling umum, mulai dari indigo sebagai aksen, Inter tanpa skala, hero center dengan dua tombol, sampai gradien biru ke ungu.

Setiap aturan di sini menuntut satu hal yang sama: elemen harus punya alasan yang bisa diucapkan. Bukan menukar satu default dengan default lain.

## Isi folder

```
SKILL.md                  Alur kerja, daftar terlarang, gate cepat, prompt block
references/web-design.md  Aturan desain lengkap + gate skor 12 baris
references/sumber.md      Asal setiap angka yang dipakai skill ini
```

`SKILL.md` adalah pintu masuk. Referensi dibaca saat butuh angka spesifik: skala tipe, kontras, durasi motion, atau batas elevation.

## Skor

Audit desain memakai 12 baris, skor 0–2 per baris, makin rendah makin baik. Lulus jika total ≤ 6 dari 24 dan tidak ada pelanggaran daftar terlarang. Skor 7–14 berarti default kit yang butuh revisi.

Skor ini alat diagnosis, bukan bukti. Skor tinggi berarti banyak default, bukan pasti AI. Jangan pakai untuk menuduh proyek yang memang memilih gaya umum.

## Dua hal yang sering disalahpahami

**Satu ciri bukan bukti.** Ungu dipakai sepertiga situs top. Inter dengan type system yang benar dipakai seperempatnya. Dua angka itu diukur pada 202 situs top, rinciannya di [references/sumber.md](references/sumber.md). Yang jadi bukti adalah bundel default tanpa satu pun keputusan pengompensasi.

**Aturan ini lantai, bukan plafon.** Kalau sebuah aturan menghalangi keputusan yang lebih baik dan bisa dipertahankan, tulis pengecualiannya di file brand.

## Hubungan dengan copy

Panjang headline dan label CTA menentukan ukuran display, lebar tombol, dan bentuk hero. Kalau halaman juga butuh aturan teks, pasang skill `copywriting-anti-ai`. Pembagian kerjanya: skill ini memutuskan ruang dan bentuk, skill copy memutuskan kalimat.

## Pemasangan

Cara memasang skill ini, sendiri atau bersama skill lain, ada di [README repo](https://github.com/sakeeo/ai-mastery-hub#cara-pasang). Lisensinya MIT dan tercatat di akar repo.
