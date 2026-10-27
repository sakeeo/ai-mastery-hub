---
name: seo-onpage
description: >-
  Aturan on-page SEO untuk halaman yang ingin muncul dan diklik: pemetaan keyword,
  title, meta description, slug, struktur heading, alt gambar, distribusi keyword,
  isi, internal link, schema, dan checklist sebelum publish. Membedakan aturan
  mesin dari skor tool dan keputusan kerja. Pakai saat menulis atau mengaudit
  halaman baru, memetakan keyword, atau membereskan halaman yang tidak bergerak.
  Jangan pakai untuk technical SEO di luar halaman atau link building.
---

# On-page SEO

Skor tool 90 dengan title yang tidak menjawab query tidak berarti apa-apa. Perdebatan on-page sering panas karena tiga jenis aturan dicampur: aturan mesin dari dokumentasi Google, aturan tool dari plugin dan alat skor, dan keputusan kerja tim. Yang satu bisa dilanggar tanpa akibat, yang lain tidak.

Skill ini memisahkan ketiganya, lalu memberi urutan kerja dan checklist. Contoh memakai amospa.com karena risetnya disusun untuk situs itu. Aturannya berlaku untuk halaman lain; ganti nama, harga, dan fasilitas dengan fakta situs Anda.

## Kapan dipakai

Halaman baru, audit halaman lama, pemetaan keyword, penulisan title dan meta description, struktur heading, alt gambar, internal link, atau membereskan halaman yang tidak bergerak. Jangan pakai untuk technical SEO di luar halaman (server, arsitektur situs besar), link building, atau iklan berbayar.

## Tiga jenis aturan

| Jenis | Sumber | Sifat | Contoh |
|---|---|---|---|
| Aturan mesin | Dokumentasi Google Search Central | Wajib, bisa berubah kapan saja | Title dipotong sesuai lebar perangkat; meta description sering diganti Google |
| Aturan tool | Wincher, Yoast, Rank Math, Surfer | Heuristik untuk memberi skor | Skor turun kalau keyword tidak ada di URL; H1 dibatasi 40 karakter |
| Keputusan kerja | Skill ini | Konvensi agar hasil konsisten | Slug tidak diubah tanpa 301; frasa utuh maksimal di dua heading |

Tool dipakai untuk memastikan tidak ada elemen yang kosong, bukan untuk menaikkan skor. Penilaian hasil tetap dari Search Console: impresi, klik, posisi, dan URL yang tampil untuk tiap query.

## Sepuluh aturan inti

1. Satu halaman, satu keyword utama. Keyword lain dipetakan sebagai support, bukan diperebutkan di halaman yang sama.
2. Keyword di lima titik: title, H1, 100 kata pertama, satu H2, dan meta description. Tidak perlu di semua heading.
3. Frasa utuh maksimal di dua heading. Sisanya varian atau parafrase.
4. Title 50–60 karakter. Keyword di 25–30 karakter pertama, nama brand di belakang.
5. Meta description 140–160 karakter. Dua fakta dan satu ajakan.
6. Slug 2–5 kata. Huruf kecil, tanda hubung. Slug lama tidak diubah tanpa redirect 301.
7. Satu H1, 4–8 H2, H3 hanya di bawah H2.
8. Alt gambar 5–12 kata. Nama file deskriptif, bukan IMG_2041.
9. Tanpa target keyword density. Hitung kemunculan frasa utuh dan jaraknya: 2–4 per 700 kata, maksimum satu per paragraf.
10. Fakta harus konsisten. Harga, jam buka, dan nama fasilitas sama di isi, schema, dan halaman lain.

## Alur kerja

Tujuh langkah, berurutan.

**1. Peta keyword.** Satu keyword utama per URL, plus 3–7 support. Cek Search Console untuk keyword yang sudah punya tujuan lain. Kalau dua URL bergantian untuk query yang sama, itu kanibalisasi.

**2. Tentukan judul dan alamat.** Title, meta description, dan slug ditulis sebelum isi. Slug ditentukan sebelum publish dan dianggap permanen sesudahnya.

**3. Susun outline.** Satu H1, 4–8 H2, H3 hanya di bawah H2. Setiap H2 satu ide. Frasa utuh hanya di H1 dan satu H2.

**4. Tulis isi.** Jawab pertanyaan yang muncul sebelum orang memesan: apa itu, untuk siapa, berapa, di mana, kapan, bagaimana caranya. Paragraf 2–4 kalimat. Fakta berderet jadi tabel atau daftar.

**5. Gambar.** Alt 5–12 kata, nama file 3–6 kata, format WebP atau AVIF, hero tanpa lazy-load.

**6. Internal link dan schema.** 3–6 link kontekstual keluar, minimal satu link masuk, anchor deskriptif. Schema harus sama dengan isi yang terlihat.

**7. Audit.** Jalankan checklist 18 baris di bawah. Jangan publish sebelum semua tercentang.

## Angka wajib

| Elemen | Target | Catatan |
|---|---|---|
| Keyword utama | 1 per URL | Tentukan sebelum outline |
| Support keyword | 3–7 | Satu keyword satu bagian |
| Title | 50–60 karakter | Keyword di 25–30 karakter pertama, brand di akhir |
| Meta description | 140–160 karakter | Dua fakta dan satu ajakan |
| Slug | 2–5 kata | Huruf kecil, tanda hubung, satu bahasa |
| H1 | 1 | Memuat keyword, bukan hanya nama brand |
| H2 | 4–8 | Satu ide per heading |
| H3 | 0–6 | Hanya di bawah H2 |
| Alt gambar | 5–12 kata | Menjelaskan isi dan konteks |
| Nama file | 3–6 kata | Kebab-case, deskriptif |
| Frasa utuh | 2–4 per 700 kata | Jarak minimal satu paragraf |
| Internal link | 3–6 keluar, minimal 1 masuk | Anchor deskriptif, bervariasi |
| Core Web Vitals | LCP 2,5 s, INP 200 ms, CLS 0,1 | Diukur di ponsel |

## Daftar terlarang

| Kategori | Dilarang |
|---|---|
| Keyword | Dua keyword utama di satu halaman; dua URL mengejar keyword yang sama; keyword di semua heading |
| Title | Title duplikat antar halaman; keyword diulang; ALL CAPS; emoji; tanda seru |
| Description | Description duplikat; daftar keyword; janji yang tidak ada di halaman |
| Slug | Slug diubah tanpa 301, pembaruan internal link, dan sitemap |
| Heading | Lebih dari satu H1; H3 tanpa isi; heading yang hanya mengulang heading sebelumnya |
| Gambar | Alt "gambar" atau "foto"; alt stuffing; nama file IMG_1234; hero lazy-load |
| Isi | Halaman massal untuk variasi keyword; klaim "terbaik" tanpa bukti; tabel harga berupa gambar atau PDF |
| Fakta | Harga, jam, atau fasilitas berbeda antara isi, schema, dan halaman lain; schema dengan harga fiktif |

## Checklist sebelum publish

Dicentang sebelum halaman dikirim, bukan sesudah.

| No | Periksa | Ya |
|---|---|---|
| 1 | Keyword utama ada di title, H1, 100 kata pertama, satu H2, dan meta description | |
| 2 | Frasa utuh muncul 2–4 kali di isi, tidak ada dua kemunculan dalam satu paragraf | |
| 3 | Frasa utuh hanya dipakai di dua heading | |
| 4 | Title 50–60 karakter, unik, keyword di 25–30 karakter pertama | |
| 5 | Title yang tampil di sumber halaman sama dengan isian di plugin | |
| 6 | Meta description 140–160 karakter dan memuat dua fakta | |
| 7 | Tidak ada description yang sama dengan halaman lain | |
| 8 | Slug 2–5 kata, huruf kecil, tanpa stop word berlebih | |
| 9 | Hanya satu H1, dan isinya bukan nama brand saja | |
| 10 | Jumlah H2 antara 4 dan 8, tiap H2 punya isi | |
| 11 | Alt semua gambar terisi; gambar dekoratif memakai alt kosong | |
| 12 | Nama file gambar deskriptif, format WebP | |
| 13 | Gambar hero tidak lazy-load, gambar lain lazy-load | |
| 14 | Semua fakta (harga, jam, fasilitas) sama dengan halaman lain dan schema | |
| 15 | Minimal tiga internal link keluar dan satu link masuk | |
| 16 | Canonical menunjuk ke halaman sendiri, halaman tidak noindex | |
| 17 | Tabel harga berupa HTML, bukan gambar atau widget | |
| 18 | Halaman tampil benar di ponsel dan LCP di bawah 2,5 detik | |

## Mitos yang dibuang

- Keyword density 1–2% bukan sinyal yang dipakai Google.
- Keyword tidak harus ada di semua heading. Cukup H1 dan satu H2.
- Tidak ada jumlah kata minimum atau maksimum. Panjang mengikuti cakupan.
- E-E-A-T bukan ranking factor, meski pengalaman nyata membedakan halaman.
- Keyword di URL pengaruhnya sangat kecil, hanya terlihat di breadcrumb.
- Alt text tidak harus memuat keyword. Alt menjelaskan gambar.
- H1 tidak harus sama dengan title. Fungsinya berbeda.
- Meta description tidak menentukan ranking. Fungsinya klik.
- Urutan heading tidak menentukan ranking. Penting untuk aksesibilitas dan pembacaan.

Kalau ada rekomendasi yang tidak punya dasar di dokumentasi Google atau pengukuran, perlakukan sebagai hipotesis. Uji di satu halaman, ukur 4 minggu, baru jadikan aturan.

## Prompt block

Tempel apa adanya ke `CLAUDE.md`, system prompt, atau custom instructions.

```
ON-PAGE SEO — WAJIB, BUKAN SARAN

SEBELUM MENULIS:
- Tetapkan 1 keyword utama dan 3-7 support untuk URL ini.
- Cek Search Console: jangan buat URL baru untuk keyword yang sudah punya tujuan.
- Tentukan title, meta description, slug, dan outline sebelum menulis isi.

DILARANG:
- Dua keyword utama di satu halaman; dua URL untuk satu keyword.
- Keyword di semua heading; frasa utuh di lebih dari dua heading.
- Title atau meta description yang sama di dua halaman.
- Mengubah slug tanpa 301, pembaruan internal link, dan sitemap.
- Menargetkan keyword density persen.
- Alt "gambar"/"foto", atau keyword yang tidak menggambarkan gambar.
- Schema yang berbeda dari isi; harga atau fakta fiktif.
- Halaman massal untuk variasi keyword; klaim "terbaik" tanpa bukti.
- Tabel harga berupa gambar, widget, atau PDF.
- Lazy-load gambar hero.

WAJIB:
- Title 50-60 karakter, keyword di 25-30 pertama, brand di akhir.
- Meta description 140-160 karakter, dua fakta dan satu ajakan.
- Slug 2-5 kata; satu H1; 4-8 H2; H3 hanya di bawah H2.
- Frasa utuh 2-4 per 700 kata, jarak minimal satu paragraf.
- Alt 5-12 kata; nama file 3-6 kata kebab-case.
- 3-6 internal link keluar, minimal 1 masuk, anchor deskriptif.
- Fakta sama di isi, schema, dan halaman lain.
- LCP < 2,5 s, INP < 200 ms, CLS < 0,1 di ponsel.

SETELAH:
- Jalankan checklist 18 baris. Jangan publish sebelum semua tercentang.
- Ukur di Search Console setelah 4 minggu. Jangan menilai dari skor tool.
```

## Referensi

| File | Isi |
|---|---|
| [`references/aturan.md`](references/aturan.md) | Rincian per elemen: keyword, title, description, slug, heading, gambar, distribusi, isi, internal link, schema, dan tabel mitos. |
| [`references/sumber.md`](references/sumber.md) | Dokumentasi Google, pengukuran tool, dan angka mana yang cuma keputusan kerja. |

Aturan ini lantai, bukan plafon. Kalau sebuah konvensi menghalangi keputusan yang lebih baik dan bisa dipertahankan, tulis pengecualiannya di plan halaman.
