---
name: web-design-anti-ai
description: >-
  Aturan desain antarmuka untuk halaman web yang tidak terasa dibuat mesin:
  warna, tipografi, layout, radius dan elevasi, spacing, state interaksi, motion,
  gambar, ikon, kode, dan aksesibilitas. Pakai saat membangun atau mengaudit
  landing page, pricing page, portofolio, hero section, atau halaman produk.
  Jangan pakai untuk dashboard internal yang padat data, aplikasi admin, atau
  dokumen legal. Untuk headline, CTA, dan microcopy, pakai skill
  copywriting-anti-ai.
---

# Web design anti-AI

Situs terasa buatan mesin karena setiap pilihan diambil dari nilai paling umum: indigo sebagai aksen, Inter tanpa skala, hero center dengan dua tombol, gradien biru ke ungu. Bukan karena jelek. Karena tidak ada yang dipilih.

Skill ini menangani lapis visual. Kalimat, CTA, dan bukti ada di skill `copywriting-anti-ai`.

## Kapan dipakai

Bangun atau review halaman yang dibaca orang untuk memutuskan sesuatu: landing page, pricing, portofolio, halaman produk, hero docs. Jangan pakai untuk aplikasi internal padat (tabel data, dashboard admin 14px) atau dokumen legal.

## Tiga prinsip

**Default adalah ketiadaan keputusan.** Setiap elemen harus punya alasan yang bisa diucapkan. Kalau alasannya "biasanya begitu", itu bukan alasan.

**Satu ciri bukan bukti.** Ungu dipakai sepertiga situs top. Inter dengan type system yang benar dipakai seperempatnya. Dua angka itu diukur pada 202 situs, rinciannya di [`references/sumber.md`](references/sumber.md). Yang jadi bukti adalah bundel default tanpa satu pun keputusan pengompensasi.

**Overcorrection juga default.** Menghindari indigo lalu pindah ke krem + rust + serif italic bukan keluar dari mesin, itu default gelombang kedua. Setiap nilai harus bisa dilacak ke brand, bukan ke reaksi terhadap tren.

## Alur kerja

Enam fase. Fase 1 dan 2 dikerjakan sebelum satu baris CSS, karena keduanya menentukan sisanya.

**1. Brief dan refusal.** Tulis tujuan halaman, satu audiens, dan lima hal yang brand ini tidak boleh terlihat. Refusal adalah penahan paling efektif terhadap model yang punya opini sendiri.

**2. Tiga keputusan milik sendiri.** Minimal satu harus mahal ditiru: display face berlisensi, aksen yang bukan default model, grid editorial, atau sistem ilustrasi custom. Dokumentasikan alasannya.

**3. Token sebelum komponen.** File token (`--color-*`, `--font-*`, `--space-*`, `--radius-*`, `--shadow-*`, `--duration-*`, `--ease-*`) sebelum komponen pertama. Tidak ada hex atau px hardcoded.

**4. Bangun.** Setiap komponen interaktif punya enam state: default, hover, focus-visible, active, disabled, loading. Spacing dari skala 4/8. Gambar produk nyata, bukan blob abstrak. Copy nyata dari skill copy, bukan lorem ipsum.

**5. Audit.** Jalankan gate cepat, lalu gate 12 baris di referensi. Perbaiki yang gagal, audit ulang. Generate, audit, fix, audit. Jangan rilis hasil generate pertama.

**6. Rilis.** Title unik per halaman, description, OG image, `lang`, alt yang mendeskripsikan fungsi, target sentuh 44px. Bersihkan import mati dan `transition: all`.

## Serah terima dengan copy

Headline dan CTA menentukan bentuk layout. Sepakati tiga hal sebelum komponen pertama: panjang headline, label CTA terpanjang, dan section bukti yang datanya belum ada.

| Keputusan copy | Yang perlu disiapkan desain |
|---|---|
| Headline berupa klaim spesifik, biasanya lebih panjang | Display 48–64px, line-height 1.05–1.15, tracking −0.02em, hero yang tidak di-center |
| CTA menyebut hasil ("Jadwalkan 15 menit dengan engineer") | Tombol lebih lebar. Uji label terpanjang di 320px, padding 8/15, radius 8–12 atau pill |
| Tidak ada angka tanpa sumber | Section metrik dikosongkan atau diganti bukti lain, bukan kartu filler |
| Testimoni hanya yang nyata | Satu testimoni panjang yang asimetris, bukan tiga kartu identik |

Kalau copy belum siap, tulis "TODO: data" di tempatnya. Jangan membengkokkan layout untuk teks placeholder.

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
| Gambar | Blob atau aurora tanpa isi; gambar AI dengan teks rusak di hero, testimoni, atau tim; stok metafora korporat |
| Kode | Hex hardcoded di komponen; data dummy di produksi; import mati |

## Audit

Gate cepat delapan baris untuk iterasi tengah jalan. Skor 0 (lulus) atau 1 (default mesin) per baris.

| # | Cek | Lulus |
|---|---|---|
| 1 | Warna | Aksen bisa dilacak ke brand, bukan indigo atau krem + rust |
| 2 | Hero | Ada satu elemen yang memecah simetri, dan produknya nyata |
| 3 | Tipografi | Skala 4–6 step konsisten, display punya tracking |
| 4 | Layout | Bukan hero center + 3 kartu; urutan section punya alasan |
| 5 | State | Enam state ada, focus ring terlihat |
| 6 | Spacing | Skala 4/8, padding section bervariasi |
| 7 | Gambar dan ikon | Produk nyata, satu set ikon, tanpa emoji |
| 8 | Motion dan aksesibilitas | Motion bertujuan, reduced-motion dihormati, kontras ≥ 4.5:1, target sentuh 44px |

Gate lengkap 12 baris ada di referensi. Lulus jika skor ≤ 6 dari 24 dan tidak ada pelanggaran daftar terlarang. Skor 7–14 berarti default kit yang butuh revisi. Skor tinggi berarti banyak default, bukan bukti AI.

## Jangan overcorrect

Ungu, Inter dengan type system yang benar, minimalisme, ruang kosong, bento grid, glassmorphism di modal, animasi yang punya tujuan, dark mode, pill button, dan radius besar semuanya dipakai situs top dan bukan tell. Bedanya selalu konsistensi dan alasan, bukan ada atau tidaknya fitur.

## Prompt block

Tempel apa adanya ke `CLAUDE.md`, `.cursorrules`, atau system prompt.

```
DESIGN RULES — WAJIB, BUKAN SARAN

SEBELUM MENULIS UI:
- Baca design token di repo. Kalau belum ada, buat: --color-*, --font-*,
  --space-*, --radius-*, --shadow-*, --duration-*, --ease-*.
- Jangan menulis hex atau px hardcoded di komponen.
- Sebutkan 3 keputusan desain milik proyek ini dan alasannya.
- Cek panjang headline dan label CTA terpanjang sebelum menentukan ukuran.

DILARANG:
- Gradien biru-ungu sebagai latar; gradien pada teks.
- Krem/beige + aksen rust + serif italic sebagai "gaya".
- Hero center + headline + subteks + 2 CTA + gradien.
- Tepat 3 kartu fitur dengan ikon seukuran.
- Satu border-radius untuk semua; shadow-lg di semua container.
- Nested card; backdrop-blur di kartu biasa.
- Teks di bawah 12px.
- Fade-in seragam; transition: all; outline: none tanpa focus ring.
- Emoji sebagai ikon; sparkles/wand/bot/brain/cpu; campur gaya ikon.
- Blob/aurora tanpa isi; gambar AI rusak di area kredibilitas.
- Mengisi section bukti dengan testimoni, logo, atau angka karangan.
  Kosongkan section-nya.

WAJIB:
- Type scale 4-6 step (acuan 64/48/32/16), display line-height ~1.1 dengan
  letter-spacing negatif, body 16px line-height 1.5.
- Container 1120-1280px; padding section 64px vertikal dengan variasi.
- Radius 3 nilai (4/8/16); tombol primer radius 8-12 atau pill, padding
  ~8/15, label 15px weight 500.
- Elevasi maksimum 3 level; mayoritas flat; hairline untuk pemisah.
- 6 state untuk setiap komponen interaktif.
- Hover 120-180ms, state change 200-300ms, easing eksplisit,
  prefers-reduced-motion dihormati.
- Kontras body >= 4.5:1, target sentuh >= 44px, heading berurutan, alt bermakna.
- Dark mode near-black bertint, bukan #000.
- Satu set ikon, satu stroke width.

SETELAH CODING:
- Audit terhadap daftar ini. Laporkan setiap pelanggaran dan perbaiki.
- Jangan tampilkan hasil sebelum audit bersih.
```

## Referensi

| File | Isi |
|---|---|
| [`references/web-design.md`](references/web-design.md) | Aturan lengkap: fondasi token, warna, tipografi, layout, radius/elevasi, spacing, state, motion, gambar, kode, aksesibilitas. Termasuk gate 12 baris dan prompt block. |
| [`references/sumber.md`](references/sumber.md) | Asal setiap angka yang dipakai skill ini, dan ambang mana yang cuma heuristik. |

Aturan copy, klaim, dan bukti ada di skill `copywriting-anti-ai`. Kalau dua aturan bertentangan, aturan yang lebih spesifik untuk konteksnya menang, dan pengecualiannya dicatat di file brand.
