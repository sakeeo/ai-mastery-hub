# On-page SEO

Skill untuk menulis dan mengaudit halaman yang ingin muncul di hasil pencarian dan diklik: pemetaan keyword, title, meta description, slug, struktur heading, alt gambar, distribusi keyword, isi, internal link, dan schema.

Risetnya disusun untuk amospa.com dan situs klien, lalu digeneralisasi. Contoh di dalam skill memakai amospa.com; ganti dengan fakta situs Anda.

## Masalah yang disasar

Saran on-page sering bertentangan karena tiga jenis aturan dicampur: aturan mesin dari dokumentasi Google, aturan tool dari plugin skor, dan keputusan kerja tim. Banyak saran tool tidak sesuai dengan apa yang dipakai Google: keyword di URL, H1 maksimal 40 karakter, keyword density 1–2%, keyword di semua heading.

Skill ini memisahkan ketiganya. Tool dipakai untuk memastikan tidak ada elemen kosong, bukan untuk menentukan strategi. Penilaian hasil tetap dari Search Console: impresi, klik, posisi, dan URL yang tampil.

## Isi folder

```
SKILL.md                  Alur kerja, sepuluh aturan inti, checklist 18 baris, prompt block
references/aturan.md      Rincian per elemen + tabel mitos
references/sumber.md      Dokumentasi Google dan asal setiap angka
```

`SKILL.md` adalah pintu masuk. Checklist publish ada di sana; rincian tiap elemen ada di referensi.

## Cara menilai

Tidak ada skor tunggal. Audit memakai checklist 18 baris: keyword di lima titik, title, description, slug, heading, alt, fakta, internal link, canonical, tabel harga, dan Core Web Vitals. Semua harus tercentang sebelum publish.

Skor plugin boleh dicatat sebagai pembanding antar waktu, bukan target. Skor 95 dengan title yang tidak menarik kalah dari skor 70 dengan title yang menjawab query.

## Dua hal yang sering disalahpahami

**Meta description bukan faktor ranking.** Google memilih sendiri potongan teks yang tampil, dan sering memakai isi halaman. Description tetap ditulis karena memengaruhi klik dan dipakai mesin lain seperti WhatsApp, LinkedIn, dan sebagian layanan pencarian AI.

**Tidak ada keyword density yang benar.** Google berulang kali menyebut density bukan sinyal yang dipakai. Yang bisa diperiksa adalah jumlah kemunculan frasa utuh dan jaraknya. Target persen diganti 2–4 kemunculan per 700 kata, maksimal satu per paragraf.

## Batas pemakaian

Skill ini untuk on-page: isi halaman dan elemen di dalamnya. Bukan untuk technical SEO di luar halaman (server, arsitektur situs besar), link building, atau iklan berbayar.

## Pemasangan

Cara memasang skill ini, sendiri atau bersama skill lain, ada di [README repo](https://github.com/sakeeo/ai-mastery-hub#cara-pasang). Lisensinya MIT dan tercatat di akar repo.
