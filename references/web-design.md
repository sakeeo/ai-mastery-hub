# Rules Web Design Anti-AI

**Versi 1.0** · Turunan riset ciri-ciri web design buatan AI (taxonomy 27 tells, 3,2 juta post Reddit, validasi 202 situs).

**Cara pakai:**
- **Manusia** → ini spec desain. Baca §0 dan §13 dulu, sisanya referensi.
- **Coding agent** → tempel §16 ke `CLAUDE.md` / `.cursorrules` / custom instructions v0 & Lovable.

**Posisi dokumen:** ini rincian aturan desain dari skill [`web-design-anti-ai`](../SKILL.md). Untuk alur kerja gabungan desain + copy, baca `SKILL.md` lebih dulu.

**Sifat dokumen:** rules ini menetapkan **lantai**, bukan plafon. Tujuannya menghapus default mesin, bukan menyeragamkan gaya. Kalau sebuah aturan menghalangi keputusan yang lebih baik dan bisa dipertahankan, tulis pengecualiannya di file brand — jangan diam-diam melanggarnya.

---

## 0. Tiga prinsip

**P1 — Default adalah ketiadaan keputusan.** Situs terlihat "AI" bukan karena jelek, tapi karena setiap pilihan diambil dari nilai paling umum. Setiap elemen harus punya alasan yang bisa diucapkan.

**P2 — Satu ciri bukan bukti.** Ungu, Inter, minimalisme, bento grid, dan glassmorphism semuanya dipakai situs top. Yang jadi bukti adalah **bundel default tanpa satu pun keputusan yang mengompensasi**.

**P3 — Jangan menukar default lama dengan default baru.** Menghindari indigo-lalu pindah ke krem + serif italic + rust + sage bukan keluar dari default; itu default gelombang kedua (lihat pola "Claudian sameness"). Setiap nilai harus bisa dilacak ke brand, bukan ke tren.

---

## 1. Fondasi (F)

**F1 — Token sebelum UI.** Sebelum baris komponen pertama, ada file token: `--color-*`, `--font-*`, `--space-*`, `--radius-*`, `--shadow-*`, `--duration-*`, `--ease-*`. Tidak ada hex/px hardcoded di komponen.

**F2 — Tiga keputusan milik sendiri.** Minimal satu harus "mahal ditiru": display face berlisensi, warna aksen yang bukan default model, grid editorial, atau sistem ilustrasi custom. Dokumentasikan alasan masing-masing.

**F3 — Brand refusal.** Tulis 5 hal yang brand ini **tidak boleh** terlihat. Ini penahan paling efektif terhadap model yang punya opini sendiri.

**F4 — Token semantik, bukan ramp mentah.** Pakai `--color-surface`, `--color-text-muted`, `--color-border`; bukan `--indigo-500` yang dipakai langsung di komponen.

**F5 — Satu sumber kebenaran.** Token yang sama dipakai di light/dark dan di semua halaman. Tidak ada nilai "khusus halaman ini" tanpa alasan.

---

## 2. Warna (W)

**W1 — Aksen dari brand.** Indigo `#6366f1` / violet default dan pasangan krem + rust dilarang, kecuali brand memang itu dan bisa dijelaskan.

**W2 — Gradien hanya untuk makna.** Kedalaman, status, atau data. Dilarang: gradien sebagai latar hero, gradien pada teks headline.

**W3 — Satu aksen + satu set warna status.** Pill badge dengan banyak hue berbeda dilarang. Kalau semua diberi warna, tidak ada yang bermakna.

**W4 — Kontras minimum.** Body ≥ 4.5:1, display ≥ 24px ≥ 3:1. Teks muted tetap ≥ 4.5:1 — abu muda di atas krem adalah pelanggaran paling umum.

**W5 — Dark mode bertint.** Latar near-black bertint (`#0b0f19`, `#111`, `#18181b`), bukan `#000`. Surface satu step lebih terang. Teks off-white, bukan `#fff`. Jangan invert otomatis dari light.

**W6 — Jangan andalkan hue saja.** Status error/success/warning butuh ikon atau teks pendamping (colorblind).

**W7 — Maksimum 2 warna netral + 1 aksen + 1 netral hangat/dingin.** Lebih dari itu butuh sistem, bukan palet.

---

## 3. Tipografi (T)

**T1 — Skala modular 4–6 step.** Target acuan: 64 / 48 / 32 / 16. Boleh berbeda, tapi harus konsisten dan terdokumentasi.

**T2 — Display butuh optical tracking.** Line-height 1.05–1.15, letter-spacing negatif ≈ −0.02em sampai −0.03em pada ukuran besar.

**T3 — Body 16px, line-height 1.5–1.7.** 14px hanya untuk produk padat/CJK.

**T4 — Floor 12px.** Tidak ada teks fungsional di bawah 12px. Hierarchy dibangun dengan weight dan warna, bukan dengan mengecilkan.

**T5 — Maksimum 2 famili.** Satu display + satu body. Satu famili boleh, kalau punya banyak weight dan benar-benar dipakai.

**T6 — Inter/Pretendard/Geist polos bukan larangan, tapi wajib dikompensasi.** Kalau dipakai: tracking, skala, hierarchy, dan weight yang eksplisit. Tanpa itu, hasilnya default mesin.

**T7 — Maksimum 2 weight dominan + 1 untuk penekanan.** Bobot 400/500/600 yang dipakai acak-acakan lebih buruk dari 2 weight disiplin.

**T8 — Baris 60–75 karakter.** Paragraf panjang jangan di-center.

---

## 4. Layout (L)

**L1 — Container 1120–1280px** (median lapangan: 1200px). Full-bleed hanya untuk media.

**L2 — Hero tidak boleh default.** Center + headline + subteks + 2 CTA + gradien adalah template. Wajib ada satu elemen yang memecah simetri: produk nyata, split 60/40, offset editorial, atau satu klaim besar tanpa CTA.

**L3 — Jumlah kartu fitur bukan 3.** Pilih 2, 4, atau 5; atau satu fitur utama besar + daftar pendukung. Tiga kartu identik dengan ikon seukuran adalah mode statistik.

**L4 — Urutan section mengikuti cerita produk.** Minimal dua section ditukar atau dihapus dari urutan default (hero → fitur → social proof → pricing → CTA → footer).

**L5 — Grid nyata.** 12 kolom atau baseline grid. Tidak semua elemen di-center; center hanya untuk momen fokus.

**L6 — Pricing tidak harus 3 tier.** Kalau pakai tier, jangan highlight tengah dengan badge "Most Popular" tanpa alasan. Alternatif: slider, kalkulator, tabel banding, atau tanpa pricing sama sekali.

**L7 — Footer sesuai kebutuhan.** Bukan 4 kolom Company/Product/Resources/Legal default. Tambahkan yang benar-benar dicari pengguna (status, changelog, docs, kontak langsung).

**L8 — Asimetri harus disengaja.** Kalau memakai layout asimetris, pastikan ada alasan hierarkis — bukan asimetri sebagai dekorasi.

---

## 5. Radius, elevasi, surface (S)

**S1 — Hierarki radius.** Minimal 3 nilai (mis. 4 / 8 / 16). Radius mengecil untuk elemen kecil. Satu `border-radius` untuk semua elemen adalah tell.

**S2 — Tombol primer terukur.** Radius 8–12px atau pill penuh; padding ~8px/15px; label 15px weight 500; shadow hanya kalau memang mengambang (mayoritas situs top tidak).

**S3 — Elevasi maksimum 3 level.** Mayoritas elemen flat. Shadow difus di semua container dilarang.

**S4 — Hairline untuk pemisah.** Border alpha rendah (mis. `rgba(0,0,0,0.08)`) lebih baik daripada shadow untuk memisahkan konten.

**S5 — Tidak ada nested card.** Satu kartu + divider, bukan kartu di dalam kartu.

**S6 — Blur hanya untuk overlay.** `backdrop-blur` di kartu biasa dilarang; glassmorphism maksimum satu lapisan dan hanya untuk modal/popover.

**S7 — Konsistensi antar komponen sejenis.** Dua tombol dengan radius/shadow berbeda adalah bug, bukan variasi.

---

## 6. Spacing & ritme (P)

**P1 — Grid 4/8px.** Step yang dipakai: 4, 8, 12, 16, 24, 32, 48, 64, 96. Tidak ada 13px, 27px, 35px.

**P2 — Padding section 64px vertikal sebagai default.** Variasikan: hero lebih lega (96–128), strip info lebih rapat (32–48). Ritme seragam di semua section membuat halaman terasa dirakit.

**P3 — Padding kartu terkait kepentingan isi.** Bukan satu nilai untuk semua kartu.

**P4 — Proximity.** Jarak antar grup > jarak dalam grup, rasio 1.5×–2×. Kalau ragu, tambah jarak antar grup.

**P5 — Ruang kosong punya fungsi.** Kalau sebuah area kosong terasa "kurang isi", masalahnya biasanya konten, bukan spacing.

---

## 7. Interaksi & state (I)

**I1 — Enam state wajib:** default, hover, focus-visible, active, disabled, loading.

**I2 — Focus ring terlihat.** Outline 2px + offset 2px, kontras di semua latar. `outline: none` tanpa pengganti adalah pelanggaran aksesibilitas, bukan pilihan estetika.

**I3 — Hover punya perubahan jelas.** Warna, posisi, elevasi, atau underline — bukan hanya `cursor: pointer`.

**I4 — Disabled punya alasan terlihat.** Teks atau tooltip yang menjelaskan kenapa; bukan opacity 0.5 buta.

**I5 — Loading tanpa layout shift.** Skeleton dengan dimensi sama, atau spinner di ruang yang sudah dipesan.

**I6 — Error spesifik dan dekat.** Pesan di sebelah field yang salah, menyebut apa yang harus diperbaiki.

**I7 — Keyboard lengkap.** Semua elemen interaktif bisa dicapai Tab, punya accessible name, urutan fokus logis.

---

## 8. Motion (M)

**M1 — Motion punya tujuan.** Orientasi, sebab-akibat, atau storytelling. Kalau tidak bisa dijelaskan, hapus.

**M2 — Dilarang fade-in seragam.** Satu animasi `opacity 0→1` untuk semua elemen saat scroll adalah tell paling umum setelah gradien.

**M3 — Durasi:** hover 120–180ms, perubahan state 200–300ms, transisi halaman 300–400ms.

**M4 — Easing eksplisit.** Contoh `cubic-bezier(0.2, 0, 0, 1)`. Jangan `transition: all`; sebut propertinya.

**M5 — Hormati `prefers-reduced-motion`.** Wajib, bukan opsional.

---

## 9. Copy (C)

**C1 — Headline = klaim spesifik yang bisa dipertahankan.** Dilarang: "Build the future of ___", "Supercharge your ___", "Seamless", "Next-gen", "Unlock", "Transform".

**C2 — CTA menyebut hasil.** "Lihat harga untuk tim", "Coba dengan data Anda", "Jadwalkan 15 menit dengan engineer" — bukan "Get Started" atau "Learn More" sendirian.

**C3 — Buzzword density < 2%.** Setiap kata besar harus punya angka, bukti, atau konsekuensi konkret di sebelahnya.

**C4 — Tidak ada lorem ipsum.** Tidak ada teks placeholder di build apa pun, termasuk draft.

**C5 — Jangan labeli fitur "AI".** Sebut fungsinya ("ringkas", "deteksi duplikat"); nama model hanya di halaman pengaturan.

**C6 — Satu brand voice tertulis.** Nada, panjang kalimat, dan kosakata yang dilarang didokumentasikan, bukan diimprovisasi per halaman.

---

## 10. Bukti & konten (B)

**B1 — Semua angka bisa diverifikasi.** Ambil dari codebase/produk. Angka bulat ("10.000+", "99%") tanpa sumber dilarang.

**B2 — Testimoni hanya yang nyata.** Nama, peran, perusahaan, izin. Kalau belum ada — kosongkan section-nya.

**B3 — Logo klien hanya klien nyata.**

**B4 — Pricing hanya kalau ada monetisasi.** Kalau tidak, ganti dengan cara pakai/deploy.

**B5 — Tidak ada urgency palsu.** Countdown, "limited seats", "early access" tanpa waitlist adalah kebohongan, bukan copywriting.

**B6 — Tidak ada comparison table** melawan kompetitor yang belum benar-benar dicek.

**B7 — Bagian kosong lebih baik daripada bagian palsu.** Ini aturan keras: satu testimoni karangan merusak seluruh kredibilitas halaman.

---

## 11. Gambar & ikon (G)

**G1 — Satu set ikon.** Satu library, satu stroke width, satu gaya (outline **atau** filled). Mencampur `fa-`, `bi-`, `material-` adalah tell.

**G2 — Dilarang ikon AI klise.** Sparkles, wand, bot, brain, cpu untuk fitur "AI". Pakai ikon yang menyebut fungsinya.

**G3 — Dilarang emoji sebagai ikon fungsional.** 🚀 ✨ ⚡ bukan icon set.

**G4 — Gambar produk nyata > ilustrasi abstrak.** Blob/aurora/wave tanpa hubungan dengan konten dilarang.

**G5 — Alt mendeskripsikan fungsi**, bukan "image" atau nama file.

**G6 — Tidak ada gambar AI dengan teks rusak, tangan aneh, atau wajah uncanny** di area kredibilitas: hero, testimoni, logo, tim.

**G7 — Stok hanya kalau relevan.** Hindari metafora korporat generik (high-five, laptop di meja kayu, panah ke atas).

---

## 12. Kode & aksesibilitas (K)

**K1 — Semantic HTML.** Heading berurutan tanpa lompat, landmark (`header`/`nav`/`main`/`footer`), `label` untuk setiap input.

**K2 — Tidak ada data dummy di produksi.** Data nyata, atau kosong terkontrol dengan label "sample".

**K3 — Metadata lengkap.** Title unik per halaman, description, OG image, sitemap, favicon, `lang`.

**K4 — Maksimum 2 famili font**, subset, `font-display: swap`.

**K5 — Gambar:** dimensi eksplisit, `loading="lazy"` di bawah fold, format modern (AVIF/WebP).

**K6 — Tidak ada kode mati.** Import tidak terpakai, komponen duplikat, dan `transition: all` dibersihkan sebelum rilis.

**K7 — Target sentuh ≥ 44×44px.**

**K8 — ARIA hanya kalau perlu.** Elemen native lebih baik daripada `div role="button"`.

---

## 13. Daftar terlarang (hard no)

Tidak ada pengecualian tanpa catatan tertulis di file brand.

| Kategori | Dilarang |
|---|---|
| Warna | Gradien biru→ungu sebagai latar; gradien pada teks; palet indigo default; krem + rust + serif sebagai "perbaikan" |
| Tipografi | Teks < 12px; > 2 famili tanpa alasan; headline tanpa tracking |
| Layout | Hero center + 2 CTA + gradien; tepat 3 kartu fitur; semua di-center; satu radius untuk semua |
| Surface | `shadow-lg` di semua container; nested card; `backdrop-blur` di kartu biasa |
| Motion | Fade-in seragam untuk semua elemen; `transition: all`; animasi tanpa `prefers-reduced-motion` |
| Ikon | Sparkles/wand/bot/brain; emoji sebagai ikon; campur gaya ikon |
| Copy | "Build the future of ___"; "Get Started" sendirian; "AI-powered" di UI; lorem ipsum |
| Konten | Testimoni karangan; logo klien palsu; angka bulat tanpa sumber; urgency palsu |
| Kode | Hex hardcoded di komponen; data dummy di produksi; import mati |

---

## 14. Prosedur kerja

1. **Brief + refusal.** Tulis tujuan halaman, audiens, dan 5 hal yang brand tidak boleh terlihat (F3).
2. **Tiga keputusan.** Pilih 3 owned decisions, minimal satu yang mahal ditiru (F2).
3. **Token dulu.** Bangun file token sebelum komponen (F1).
4. **Bangun.** Setiap komponen wajib punya 6 state (I1) dan spacing dari skala (P1).
5. **Audit.** Jalankan §15, perbaiki semua item yang gagal, ulangi sampai lulus.

Kalau memakai coding agent: **generate → audit → fix → audit ulang.** Jangan pernah rilis hasil generate pertama.

---

## 15. Gate skor

Skor 0–2 per baris (0 = aturan terpenuhi sepenuhnya, 2 = default mesin). Total 0–24, **makin rendah makin baik**.

| # | Cek | 0 | 2 |
|---|---|---|---|
| 1 | Warna | token brand | indigo default / krem+rust |
| 2 | Tipografi | display + tracking + skala | font polos tanpa skala |
| 3 | Type scale | 4–6 step konsisten | acak / satu ukuran |
| 4 | Hero | asimetris, produk nyata | center + 2 CTA + gradien |
| 5 | Fitur | bentuk bervariasi | tepat 3 kartu sama |
| 6 | Radius | hierarki 3 nilai | satu radius semua |
| 7 | Elevasi | ≤ 3 level, mayoritas flat | shadow di semua |
| 8 | Spacing | skala 4/8 + variasi | satu padding di semua |
| 9 | State | 6 state lengkap | tidak ada hover/focus |
| 10 | Copy | klaim spesifik | buzzword + CTA generik |
| 11 | Bukti | nyata & terverifikasi | palsu / kosong tanpa label |
| 12 | Kode | token, komponen bersih | hardcoded, data dummy |

**Lulus jika total ≤ 6 dan tidak ada satu pun pelanggaran §13.** Skor 7–14 = default kit, bisa AI bisa manusia. 15–24 = tanda tangan AI-default kuat.

---

## 16. Prompt block untuk coding agent

Tempel apa adanya ke `CLAUDE.md`, `.cursorrules`, atau custom instructions.

```
DESIGN RULES — WAJIB, BUKAN SARAN

SEBELUM MENULIS UI:
- Baca design token di repo. Kalau tidak ada, buat dulu: --color-*, --font-*,
  --space-*, --radius-*, --shadow-*, --duration-*, --ease-*.
- Jangan pernah menulis hex atau px hardcoded di komponen.
- Sebutkan 3 keputusan desain milik proyek ini dan alasannya sebelum coding.

DILARANG (tanpa pengecualian):
- Gradien biru→ungu sebagai latar; gradien pada teks.
- Latar krem/beige + aksen rust + serif italic sebagai "gaya".
- Hero center + headline + subteks + 2 CTA + gradient.
- Tepat 3 kartu fitur dengan ikon seukuran.
- Satu border-radius untuk semua elemen; shadow-lg di semua container.
- Nested card; backdrop-blur di kartu biasa.
- Teks di bawah 12px.
- Fade-in seragam untuk semua elemen; transition: all.
- Emoji sebagai ikon; ikon sparkles/wand/bot/brain/cpu.
- outline: none tanpa focus ring pengganti.
- "Build the future of ___", "Get Started" sendirian, "AI-powered" di UI.
- Testimoni, logo klien, angka, atau pricing yang dikarang. Kalau data belum
  ada, kosongkan section-nya dan beri label.

WAJIB:
- Type scale 4–6 step (acuan 64/48/32/16), display line-height ~1.1 dengan
  letter-spacing negatif, body 16px line-height 1.5.
- Container 1120–1280px; padding section 64px vertikal dengan variasi.
- Radius: 3 nilai (4/8/16); tombol primer radius 8–12px atau pill, padding
  ~8px/15px, label 15px weight 500.
- Elevasi maksimum 3 level; mayoritas elemen flat; hairline untuk pemisah.
- 6 state untuk setiap komponen interaktif: default, hover, focus-visible,
  active, disabled, loading.
- Hover 120–180ms, state change 200–300ms, easing eksplisit,
  prefers-reduced-motion dihormati.
- Dark mode near-black bertint (#0b0f19 / #111 / #18181b), bukan #000.
- Kontras body ≥ 4.5:1, target sentuh ≥ 44px, heading berurutan, alt bermakna.
- Satu set ikon, satu stroke width.
- CTA menyebut hasil konkret; headline berupa klaim yang bisa dipertahankan.

SETELAH CODING:
- Audit terhadap daftar di atas. Laporkan setiap pelanggaran dan perbaiki.
- Jangan tampilkan hasil sebelum audit bersih.
```

---

## 17. Yang bukan pelanggaran

Supaya tidak overcorrect — semua ini dipakai situs top dan **bukan** tell:

- Warna ungu (sepertiga situs top), Inter/Pretendard dengan type system yang benar (seperempat situs top)
- Minimalisme, banyak ruang kosong, palet terbatas
- Bento grid, glassmorphism (di urutan bawah data)
- Animasi, selama ada tujuan dan tidak seragam
- Dark mode, pill button, radius besar — selama konsisten dan merupakan keputusan, bukan default

Bedanya selalu di **konsistensi dan alasan**, bukan di ada/tidaknya fitur.
