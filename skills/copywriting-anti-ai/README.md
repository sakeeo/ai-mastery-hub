# Copywriting anti-AI

Skill untuk menulis teks halaman web yang tidak terbaca sebagai hasil mesin: headline, subhead, CTA, label tombol, empty state, pesan error, dan microcopy.

Skill ini dulunya digabung dengan aturan desain. Sekarang keduanya dipisah supaya bisa dipakai dan dipasang sendiri-sendiri. Aturan visual ada di skill `web-design-anti-ai`.

## Masalah yang disasar

Teks terasa "AI" bukan karena salah grammar. Penyebabnya lebih membosankan: setiap pilihan diambil dari opsi paling umum, mulai dari pembuka "Di era digital yang semakin…", paragraf yang panjangnya seragam, sampai penutup yang merangkum tanpa menambah apa pun.

Mengganti satu kata dengan sinonimnya tidak menolong. Yang harus berubah ritmenya, strukturnya, dan bahan yang dipakai.

## Isi folder

```
SKILL.md                  Alur kerja, daftar terlarang, gate cepat, prompt block
references/copywriting.md Aturan lengkap + gate skor 14 baris
references/sumber.md      Asal setiap angka yang dipakai skill ini
```

`SKILL.md` adalah pintu masuk. Referensi dibaca saat butuh ambang atau pola spesifik.

## Skor

Audit copy memakai 14 baris, skor 0–2 per baris, makin rendah makin baik. Lulus jika total ≤ 8 dari 28 dan tidak ada pelanggaran daftar terlarang. Skor 9–18 berarti campuran default yang butuh revisi.

Skor ini alat diagnosis, bukan bukti. Skor tinggi berarti banyak default, bukan pasti AI. Jangan pakai untuk menuduh penulis non-native atau proyek yang memang memilih gaya umum.

## Dua hal yang sering disalahpahami

**Satu kata bukan bukti.** "Komprehensif" sekali di dokumen teknis wajar. Em dash sesekali adalah tanda penulis yang peduli tanda baca. Yang jadi bukti adalah akumulasi default tanpa satu pun keputusan yang mengompensasi.

**Aturan ini lantai, bukan plafon.** Kalau sebuah aturan menghalangi kalimat yang lebih baik dan bisa dipertahankan, tulis pengecualiannya di file brand.

## Hubungan dengan desain

Panjang headline, label CTA, dan section bukti menentukan bentuk layout. Kalau halaman juga butuh aturan visual, pasang skill `web-design-anti-ai`. Pembagian kerjanya sederhana: skill ini memutuskan kalimat, skill desain memutuskan ruang dan bentuk.

## Pemasangan

Cara memasang skill ini, sendiri atau bersama skill lain, ada di [README repo](https://github.com/sakeeo/ai-mastery-hub#cara-pasang). Lisensinya MIT dan tercatat di akar repo.
