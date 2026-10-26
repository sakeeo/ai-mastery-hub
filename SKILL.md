---
name: web-design-anti-ai
description: >-
  Aturan desain dan copywriting untuk halaman web yang tidak terasa dibuat mesin.
  Menggabungkan dua set aturan, yaitu warna, tipografi, layout, radius dan elevasi,
  spacing, state interaksi, motion, gambar, kode, aksesibilitas, plus diksi, ritme
  kalimat, struktur, format, bukti, dan pola Bahasa Indonesia. Pakai saat membangun
  atau mengaudit landing page, pricing page, portofolio, hero section, atau saat
  menulis headline, subhead, CTA, dan microcopy untuk web. Terutama kalau hasilnya
  terasa generic, template, atau seperti hasil mesin. Jangan pakai untuk dashboard
  internal yang padat data, aplikasi admin, atau dokumen legal.
---

# Web Design & Copywriting Anti-AI

Dua dokumen aturan, satu kegagalan yang sama. Situs terasa buatan mesin karena setiap pilihan diambil dari nilai paling umum: indigo sebagai aksen, Inter tanpa skala, hero center dengan dua tombol, gradien biru ke ungu. Teks terasa buatan mesin karena alasan yang identik di lapis lain: kata besar tanpa angka, paragraf yang panjangnya sama, penutup yang merangkum tanpa menambah apa pun. Menghapus satu tanpa yang lain tidak banyak menolong. Halaman dengan tipografi rapi dan copy template tetap terbaca template, dan sebaliknya.

Karena itu skill ini menaruh keduanya dalam satu alur kerja, bukan dua checklist terpisah.

## Kapan dipakai

Bangun atau review halaman yang dibaca orang untuk memutuskan sesuatu: landing page, pricing, portofolio, halaman produk, hero docs. Tulis juga copy yang menempel di situ: headline, subhead, CTA, label tombol, empty state, pesan error, microcopy form.

Jangan pakai untuk aplikasi internal padat (tabel data, dashboard admin 14px) atau dokumen legal. Aturan ini menetapkan lantai untuk halaman yang punya audiens, bukan untuk semua teks di dunia.

## Tiga prinsip

**Default adalah ketiadaan keputusan.** Bukan jelek, hanya tidak dipilih. Setiap elemen dan setiap kalimat harus punya alasan yang bisa diucapkan. Kalau alasannya "biasanya begitu", itu bukan alasan.

**Satu ciri bukan bukti.** Ungu dipakai sepertiga situs top. Inter dengan type system yang benar dipakai seperempatnya. Dua angka itu dari studi 202 situs yang dirujuk di [`references/sumber.md`](references/sumber.md). Em dash yang dipakai sesekali adalah tanda penulis yang peduli tanda baca. Yang jadi bukti adalah bundel default yang tidak punya satu pun keputusan pengompensasi.

**Overcorrection juga default.** Menghindari indigo lalu pindah ke krem + rust + serif italic bukan keluar dari mesin, itu default gelombang kedua. Menghindari teks kaku lalu menulis slang dan typo sengaja bukan terdengar manusia, itu tell baru. Setiap nilai harus bisa dilacak ke brand, bukan ke reaksi terhadap tren.

## Alur kerja

Enam fase. Fase 1 dan 2 dikerjakan sebelum ada satu baris CSS atau satu kalimat final, karena keduanya yang menentukan sisanya.

**1. Brief dan refusal.** Tulis tujuan halaman, satu audiens, dan lima hal yang brand ini tidak boleh terlihat. Setelah itu voice spec lima baris: siapa yang bicara, kepada siapa, register apa, tiga kata yang khas, tiga kata yang dilarang. Refusal adalah penahan paling efektif terhadap model yang punya opini sendiri.

**2. Tiga keputusan milik sendiri.** Minimal satu harus mahal ditiru: display face berlisensi, aksen yang bukan default model, grid editorial, atau sistem ilustrasi custom. Untuk copy, tiga opini yang tidak akan disetujui semua orang, plus bahan mentah yang tidak dimiliki model: angka, nama, kejadian, kutipan, detail orang dalam. Bahan mentah dulu, kalimat kemudian.

**3. Token dan copy skeleton sebelum komponen.** File token (`--color-*`, `--font-*`, `--space-*`, `--radius-*`, `--shadow-*`, `--duration-*`, `--ease-*`) sebelum komponen pertama. Tidak ada hex atau px hardcoded. Bersamaan dengan itu, tulis headline asli dan CTA asli. Panjang headline menentukan bentuk hero, dan label tombol menentukan padding. Menulis copy di akhir berarti membengkokkan layout untuk teks placeholder.

**4. Bangun.** Setiap komponen interaktif punya enam state: default, hover, focus-visible, active, disabled, loading. Spacing dari skala 4/8. Gambar produk nyata, bukan blob abstrak. Copy nyata, bukan lorem ipsum, di build apa pun termasuk draft.

**5. Audit.** Jalankan kedua gate dan perbaiki yang gagal, lalu audit ulang. Generate, audit, fix, audit. Jangan rilis hasil generate pertama.

**6. Rilis.** Title unik per halaman, description, OG image, `lang`, alt yang mendeskripsikan fungsi, target sentuh 44px. Bersihkan import mati dan `transition: all`.

## Di mana desain dan copy saling mengunci

Bagian ini yang hilang kalau seseorang memakai dua dokumen terpisah. Keputusan copy sering memaksa keputusan desain, dan sebaliknya.

| Keputusan | Konsekuensi di lapis lain |
|---|---|
| Headline berupa klaim spesifik, bukan aspirasi | Biasanya lebih panjang dari template. Butuh display 48–64px, line-height 1.05–1.15, tracking −0.02em, dan hero yang tidak di-center. Hero center dengan dua CTA memberi ruang terlalu sempit untuk klaim. |
| CTA menyebut hasil ("Jadwalkan 15 menit dengan engineer") | Tombol jadi lebih lebar dari "Get Started". Padding 8/15, radius 8–12 atau pill, label 15px weight 500. Dua tombol bersebelahan sering tidak muat di 360px. |
| Tidak ada angka tanpa sumber | Badge "99%" dan "10.000+" hilang. Section metrik yang kosong lebih baik dibiarkan kosong atau diganti bukti lain, bukan diisi kartu filler. |
| Testimoni hanya yang nyata | Tiga kartu testimoni identik biasanya tidak bisa diisi. Satu testimoni panjang yang asimetris sering jadi pilihan yang lebih jujur dan lebih menarik. |
| Heading menjelaskan isi, bukan menggoda | Heading jadi deskriptif dan lebih panjang. Butuh line-height ~1.1, maksimum dua baris, dan type scale yang benar. Title Case justru memperkuat kesan generated. |
| Dilarang bold lead-in bullet (`**Kata:** penjelasan`) | Komponen "feature list" dengan ikon + label bold adalah pelanggaran format sekaligus pelanggaran ikon. Ganti dengan prosa, tabel sungguhan, atau dua item bukan tiga. |
| Fitur tidak dilabeli "AI" | Ikon sparkles, wand, brain, dan cpu ikut hilang. Pakai ikon yang menyebut fungsi: ringkas, deteksi duplikat, jadwal. |
| Register mengikuti audiens, termasuk partikel dan kontraksi | Lebar tombol dan line-height berubah. Uji label terpanjang di 320px sebelum menetapkan ukuran. |
| Teks muted tetap ≥ 4.5:1 | Warna muted di atas krem adalah pelanggaran kontras paling umum. Cek sebelum menulis paragraf panjang, bukan sesudahnya. |

## Daftar terlarang

Tidak ada pengecualian tanpa catatan tertulis di file brand.

| Kategori | Dilarang |
|---|---|
| Warna | Gradien biru ke ungu sebagai latar; gradien pada teks; palet indigo default; krem + rust + serif italic sebagai "perbaikan" |
| Tipografi | Teks di bawah 12px; lebih dari 2 famili tanpa alasan; headline besar tanpa tracking |
| Layout | Hero center + headline + subteks + 2 CTA + gradien; tepat 3 kartu fitur dengan ikon seukuran; semua elemen di-center; satu radius untuk semua |
| Surface | `shadow-lg` di semua container; nested card; `backdrop-blur` di kartu biasa |
| Motion | Fade-in seragam untuk semua elemen; `transition: all`; animasi tanpa `prefers-reduced-motion` |
| Ikon | Sparkles, wand, bot, brain, cpu; emoji sebagai ikon fungsional; mencampur gaya ikon |
| Copy | "Build the future of ___"; "Get Started" sendirian; "AI-powered" di UI; lorem ipsum |
| Ritme | Semua kalimat 15–20 kata; semua paragraf sama panjang; setiap paragraf diawali kata transisi |
| Retorika | "Bukan X, tapi Y" lebih dari sekali per 500 kata; triad di setiap daftar; lebih dari satu pertanyaan retoris per halaman |
| Format | Bold lead-in bullet; Title Case heading; emoji bullet; `---` sebagai pemisah seksi |
| Klaim | Angka tanpa sumber; "studi menunjukkan" tanpa nama; superlatif tanpa bukti; urgensi palsu |
| Bukti | Testimoni, logo klien, atau pricing karangan; comparison table yang belum dicek |
| Kode | Hex hardcoded di komponen; data dummy di produksi; import mati |

## Audit

Gate cepat delapan baris untuk iterasi tengah jalan. Skor 0 (lulus) atau 1 (default mesin) per baris.

| # | Cek | Lulus |
|---|---|---|
| 1 | Warna | Aksen bisa dilacak ke brand, bukan indigo atau krem+rust |
| 2 | Hero | Ada satu elemen yang memecah simetri, dan produknya nyata |
| 3 | Tipografi | Skala 4–6 step konsisten, display punya tracking |
| 4 | State | Enam state ada, focus ring terlihat |
| 5 | Copy pembuka | Kalimat pertama membawa klaim atau informasi |
| 6 | Ritme | Dalam 500 kata ada kalimat ≤ 8 kata dan ≥ 30 kata |
| 7 | Bukti | Setiap angka punya asal, setiap atribusi punya nama |
| 8 | Format | Prosa untuk argumen, bullet hanya untuk daftar sungguhan |

Gate lengkap ada di referensi. Lulus jika skor desain ≤ 6 dari 24, skor copy ≤ 8 dari 28, dan nol pelanggaran daftar terlarang. Skor 7–14 (desain) dan 9–18 (copy) berarti default kit yang butuh revisi. Skor tinggi berarti banyak default, bukan bukti AI: jangan pakai skor untuk menuduh penulis non-native atau proyek yang memang memilih gaya umum.

## Jangan overcorrect

Ungu, Inter dengan type system yang benar, minimalisme, ruang kosong, bento grid, glassmorphism di modal, animasi yang punya tujuan, dark mode, pill button, radius besar: semuanya dipakai situs top dan bukan tell. Em dash, kalimat panjang, register formal, bullet untuk daftar sungguhan, dan metafora yang lolos tes literal juga bukan pelanggaran.

Bedanya selalu konsistensi dan alasan, bukan ada atau tidaknya fitur.

## Prompt block

Tempel apa adanya ke `CLAUDE.md`, `.cursorrules`, atau system prompt.

```
ATURAN DESAIN & COPY — WAJIB, BUKAN SARAN

SEBELUM MENULIS UI ATAU COPY:
- Sebutkan 3 keputusan milik proyek ini dan alasannya, minimal satu mahal ditiru.
- Tulis 5 hal yang brand ini tidak boleh terlihat.
- Baca token di repo. Kalau belum ada, buat: --color-*, --font-*, --space-*,
  --radius-*, --shadow-*, --duration-*, --ease-*.
- Tulis headline dan CTA asli sebelum layout. Jangan mengarang angka, nama,
  kutipan, testimoni, atau sumber. Kalau data belum ada, tulis "TODO: data".

DILARANG:
- Gradien biru→ungu sebagai latar; gradien pada teks; krem + rust + serif italic.
- Hero center + headline + subteks + 2 CTA + gradien. Tepat 3 kartu fitur.
- Satu border-radius untuk semua; shadow-lg di semua container; nested card;
  backdrop-blur di kartu biasa. Teks di bawah 12px.
- Fade-in seragam; transition: all; outline: none tanpa focus ring pengganti.
- Emoji sebagai ikon; sparkles/wand/bot/brain/cpu; campur gaya ikon.
- "Build the future of ___", "Get Started" sendirian, "AI-powered" di UI.
- Pembuka "Di era digital yang semakin...", "Bayangkan sebuah dunia...".
- "Ini bukan sekadar X, melainkan Y" lebih dari sekali per 500 kata; triad di
  setiap daftar; setiap paragraf diawali kata transisi.
- Bold lead-in bullet, Title Case heading, emoji bullet, "---" sebagai pemisah.
- "Studi menunjukkan" tanpa nama; angka bulat tanpa sumber; superlatif tanpa
  bukti; urgensi palsu; testimoni atau logo karangan.
- Slang atau typo yang dipaksakan supaya "terdengar manusia".
- Kata: menyelami, merajut, memanfaatkan, komprehensif, krusial, fundamental,
  transformatif, terdepan, mulus, holistik, signifikan.

WAJIB:
- Token semantik dan spacing skala 4/8. Container 1120–1280px, padding section
  64px vertikal dengan variasi.
- Skala tipe 4–6 step (acuan 64/48/32/16), display line-height ~1.1 dengan
  letter-spacing negatif, body 16px line-height 1.5.
- Radius 3 nilai (4/8/16); tombol primer radius 8–12 atau pill, padding ~8/15,
  label 15px weight 500. Elevasi maksimum 3 level, mayoritas flat.
- Enam state per komponen interaktif. Hover 120–180ms, state change 200–300ms,
  easing eksplisit, prefers-reduced-motion dihormati.
- Kontras body ≥ 4.5:1, target sentuh ≥ 44px, heading berurutan, alt bermakna.
- Dark mode near-black bertint, bukan #000. Surface satu step lebih terang.
- Dalam 500 kata: minimal satu kalimat ≤ 8 kata dan satu kalimat ≥ 30 kata.
  Maksimum 30% paragraf diawali transisi. Maksimum 3 hedge per paragraf.
- Verba konkret, bukan nominalisasi. Em dash maksimum satu per 500 kata.
- Heading menjelaskan isi, penutup membawa klaim baru bukan ringkasan.
- Setiap angka punya sumber. Setiap atribusi punya nama. Prosa untuk argumen.

SETELAH SELESAI:
- Audit terhadap daftar ini. Laporkan setiap pelanggaran dan perbaiki.
- Jangan tampilkan hasil sebelum audit bersih.
```

Aturan di atas juga berlaku untuk teks yang Anda tulis di dalam repo ini, termasuk komentar kode dan pesan commit.

## Referensi

Baca sesuai kebutuhan, bukan sekaligus.

| File | Isi |
|---|---|
| [`references/web-design.md`](references/web-design.md) | Aturan lengkap desain: fondasi token, warna, tipografi, layout, radius/elevasi, spacing, state, motion, gambar, kode. Termasuk gate skor 12 baris dan prompt block desain. |
| [`references/copywriting.md`](references/copywriting.md) | Aturan lengkap copy: fondasi, diksi, sintaks dan ritme, struktur, format, bukti, khusus copywriting, pola Bahasa Indonesia. Termasuk gate skor 14 baris dan prompt block copy. |
| [`references/sumber.md`](references/sumber.md) | Asal setiap angka yang dipakai di repo ini, beserta ambang mana yang cuma heuristik dan bukan hasil pengukuran. |

Kalau dua referensi bertentangan, aturan yang lebih spesifik untuk konteksnya menang, dan pengecualiannya dicatat di file brand. Kalau aturan menghalangi keputusan yang lebih baik dan bisa dipertahankan, tulis alasannya, jangan melanggarnya diam-diam.
