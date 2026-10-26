# Rules Copywriting Anti-AI

**Versi 1.0** · Turunan riset ciri-ciri copywriting AI (korpus PubMed 14,4 juta abstrak, 89.239 post Reddit, studi The Economist 2026, library pola Bahasa Indonesia).

**Cara pakai:**
- **Penulis** → §0 dan §10 dulu, sisanya referensi.
- **Coding agent / LLM** → tempel §12 ke `CLAUDE.md`, system prompt, atau custom instructions.

**Posisi dokumen:** ini rincian aturan copy dari skill [`web-design-anti-ai`](../SKILL.md). Untuk alur kerja gabungan desain + copy, baca `SKILL.md` lebih dulu.

**Sifat dokumen:** ini menetapkan **lantai**, bukan gaya. Tujuannya menghapus default mesin, bukan menyeragamkan suara. Kalau sebuah aturan menghalangi kalimat yang lebih baik dan bisa dipertahankan, tulis pengecualiannya — jangan diam-diam melanggar.

**Kebijakan kedaluwarsa:** daftar kata di §2 punya umur simpan ±6 bulan. Aturan di §3–§6 bertahan lebih lama. Kalau harus memilih, patuhi yang struktural.

---

## 0. Tiga prinsip

**P1 — Default adalah ketiadaan pilihan.** Teks terasa AI bukan karena salah, tapi karena setiap pilihan diambil dari opsi paling umum. Setiap kalimat harus punya alasan untuk ada.

**P2 — Kata kedaluwarsa, ritme tidak.** Em dash adalah tell #1 selama dua tahun, lalu hilang dalam satu siklus tuning model. Yang tidak hilang: kalimat yang panjangnya seragam, paragraf yang simetris, dan kesimpulan yang merangkum tanpa menambah apa pun. Prioritaskan lapis struktural.

**P3 — Jangan tukar default mesin dengan default anti-mesin.** Register "berusaha terdengar manusia" — terlalu santai, slang dipaksakan, typo sengaja, fragmen kalimat sebagai gaya — adalah tell baru. Menghindari AI bukan berarti menulis seperti remaja yang sedang marah.

---

## 1. Fondasi (F)

**F1 — Voice spec sebelum menulis.** Tulis 5 baris: siapa yang bicara, kepada siapa, dengan register apa, tiga kata yang khas, tiga kata yang dilarang. Tanpa ini, model (atau manusia yang lelah) akan memilih default.

**F2 — Tiga opini milik sendiri.** Minimal satu klaim yang tidak akan disetujui semua orang. Teks tanpa posisi adalah teks tanpa penulis.

**F3 — Bahan mentah dulu, kalimat kemudian.** Kumpulkan angka, nama, kejadian, kutipan, dan detail yang hanya bisa diketahui orang dalam. Copy yang baik adalah hasil dari bahan yang tidak dimiliki model.

**F4 — Mulai dari tulisan sendiri, bukan dari prompt.** Tulis 2–3 paragraf pertama dengan tangan. Kalau memakai AI, beri paragraf itu sebagai sampel suara — bukan meminta AI memulai dari nol.

**F5 — AI sebagai editor, bukan penulis.** Paling jauh: merapikan, memotong, mencari inkonsistensi. Bukan: menghasilkan sudut pandang.

---

## 2. Diksi (D)

**D1 — Frekuensi, bukan larangan.** Tidak ada kata yang terlarang sendirian. Yang jadi tell adalah kata yang muncul di posisi default, dengan fungsi default, di teks yang berbeda-beda. Satu "komprehensif" di dokumen teknis wajar. Lima dalam satu halaman adalah sinyal.

**D2 — Kata yang akan diucapkan.** Kalau kata itu tidak akan keluar dari mulut penulisnya dalam percakapan serius, cari yang lain. Ini aturan tunggal paling efektif untuk diksi.

**D3 — Verba konkret mengalahkan nominalisasi.** "Meningkat 30%" mengalahkan "mengalami peningkatan sebesar 30%". "Memakai" mengalahkan "memanfaatkan". "Membantu" mengalahkan "memfasilitasi".

**D4 — Metafora harus literal-test.** Kalau kata itu hanya masuk akal secara kiasan, itu tanda default. "Lanskap regulasi", "ranah pendidikan", "kanvas cerita", "merajut harapan" — ganti dengan kata biasa.

**D5 — Satu kata besar per paragraf, maksimum.** Kepadatan buzzword di bawah 2% dari total kata. Setiap kata besar harus punya angka, nama, atau konsekuensi di sebelahnya.

**D6 — Hindari kata pengisi.** *Sangat, benar-benar, cukup, cukup banyak, pada dasarnya, secara fundamental, tentu saja, jelas, tentunya.* Kalau dihapus dan makna tidak berubah, hapus.

**D7 — Jangan pakai kata yang tidak dipahami pemakainya.** Istilah teknis boleh, asal tepat. "Holistik" yang dipakai untuk menyebut "menyeluruh" adalah sinyal bahwa penulisnya tidak memilih, hanya menerima.

---

## 3. Sintaks & ritme (S)

**S1 — Burstiness wajib.** Dalam 500 kata: minimal satu kalimat ≤ 8 kata dan satu kalimat ≥ 30 kata. Kalau semua kalimat jatuh di 15–20 kata, itu ritme mesin.

**S2 — Paragraf tidak boleh seragam.** Panjang paragraf mengikuti kepentingan isi. Kalau semua paragraf dalam satu seksi berjarak kurang dari 15% panjangnya, ada yang salah.

**S3 — Transisi implisit.** Maksimum 30% paragraf boleh diawali kata transisi. Lebih dari itu, teksnya jadi perancah: *selain itu, dengan demikian, oleh karena itu, lebih lanjut, furthermore, moreover*.

**S4 — Jangan mulai tiga paragraf berurutan dengan pola yang sama.** Termasuk pola "Kata benda + adalah…" dan "Yang perlu…".

**S5 — Negation formula maksimum satu per 500 kata.** "Bukan X, tapi Y", "bukan sekadar X, melainkan Y", "ini bukan tentang X, ini tentang Y". Pola ini terasa cerdas sekali, lalu jadi klise. Kalau klaimnya bisa dinyatakan langsung, nyatakan langsung.

**S6 — Rule of three bukan refleks.** Triad ("cepat, tepat, dan akurat") maksimum sekali per 300 kata, dan hanya kalau ketiganya memang perlu. Kebanyakan daftar lebih baik berisi dua atau empat item.

**S7 — Hindari copula avoidance.** "Berfungsi sebagai", "merupakan", "tampil sebagai", "hadir sebagai" yang menggantikan "adalah" hanya menambah suku kata.

**S8 — Hedging terkendali.** Maksimum 3 hedge per paragraf, 8 per 1.000 kata. Hedge hanya untuk hal yang memang belum pasti. Fakta yang sudah mapan tidak perlu "bisa jadi", "cenderung", "di satu sisi".

**S9 — Kalimat panjang harus punya alasan.** Kalau satu kalimat memuat lebih dari dua klausa, tanya apakah bisa dipotong. Teks AI memanjangkan kalimat karena menambah kualifikasi, bukan informasi.

**S10 — Tanda baca dipakai, bukan dihindari.** Koma, titik koma, tanda kurung, dan titik dua adalah alat. Teks yang minim tanda baca dan mengandalkan "dan" untuk menyambung adalah pola mesin terbaru.

**S11 — Em dash maksimum satu per 500 kata.** Bukan karena em dash itu AI (tidak lagi), tapi karena pemakaian berulang membuatnya jadi alat bantu ritme, bukan pilihan. Kalau koma atau kurung bisa, pakai itu.

---

## 4. Struktur (T)

**T1 — Pembuka langsung ke poin.** Tidak ada "Di era digital yang semakin…", "Bayangkan sebuah dunia di mana…", "Sejak dahulu kala…". Kalimat pertama membawa informasi atau klaim.

**T2 — Struktur mengikuti argumen, bukan template.** Kalau kerangkanya bisa dipakai untuk topik lain tanpa perubahan, itu template. Minimal satu bagian harus ada karena topik ini, bukan karena urutan standar.

**T3 — Heading menjelaskan, bukan menggoda.** "The Silent Killer" dan "The Trap You Don't See" adalah judul thriller. Heading yang baik seperti entri indeks manual teknis: spesifik, deskriptif, membosankan bagi yang tidak berkepentingan.

**T4 — Penutup membawa klaim baru.** Bukan ringkasan. Kalau paragraf terakhir bisa dihapus tanpa kehilangan apa pun, hapus.

**T5 — Tidak ada bagian "tantangan dan prospek ke depan".** Itu formula penutup ensiklopedis, bukan penutup copy.

**T6 — Panjang mengikuti nilai.** Kalimat yang tidak menambah informasi dihapus. Verbositas adalah salah satu dari dua penanda terkuat di 2026.

**T7 — Satu ide per paragraf, satu klaim per kalimat.** Kalau paragraf punya dua ide, pecah. Kalau kalimat punya tiga klaim, pilih satu.

---

## 5. Format (M)

**M1 — Prosa untuk hal yang memang prosa.** Bullet hanya untuk daftar yang benar-benar list-like. Argumen, penjelasan, dan cerita ditulis sebagai paragraf.

**M2 — Larang bold lead-in bullet.** `**Kecepatan:** sistem memproses…` adalah pola format paling khas output LLM. Tulis kalimat biasa.

**M3 — Sentence case untuk heading.** Title Case di heading adalah konvensi yang menandai teks generated, bukan pilihan gaya.

**M4 — Tanpa emoji sebagai bullet atau penanda seksi.** ✅ 🚀 💡 bukan sistem desain.

**M5 — Tanpa `---` sebagai pemisah seksi.** Pakai paragraf atau heading.

**M6 — Bersihkan artefak paste.** "Sebagai model bahasa AI…", "Mau saya sesuaikan nadanya?", `[Nama Perusahaan]`, `oaicite`, `contentReference`, `turn0search0`, tanda kutip melengkung dari markdown.

**M7 — Tabel hanya kalau ada data tabular.** Tabel untuk tiga kalimat prosa adalah bingkai, bukan informasi.

**M8 — Jangan pakai placeholder di draf yang dibagikan.** Tulis "TODO: angka", bukan angka karangan.

---

## 6. Konten & bukti (B)

**B1 — Setiap angka punya asal.** Kalau tidak bisa ditunjuk sumbernya, hapus. Angka bulat ("10.000+", "99%", "3× lebih cepat") tanpa dasar adalah default template.

**B2 — Atribusi bernama atau tidak sama sekali.** "Studi menunjukkan" dan "para ahli sepakat" tanpa nama adalah klaim kosong. Sebut peneliti, lembaga, tahun, atau buang kalimatnya.

**B3 — Tes tukar brand.** Ganti nama brand dengan kompetitor. Kalau copy tetap masuk akal, itu bukan copy — itu template. Tulis ulang sampai jadi spesifik.

**B4 — Klaim yang bisa diserang.** Copy yang baik berani menyatakan sesuatu yang bisa dibantah. "Solusi terbaik untuk semua kebutuhan" tidak bisa diserang karena tidak mengatakan apa pun.

**B5 — Akui batasan.** Satu kalimat tentang untuk siapa produk ini **tidak** cocok lebih meyakinkan daripada sepuluh superlatif.

**B6 — Bukti sosial harus nyata.** Nama, logo, angka, atau tidak ada sama sekali. Testimoni karangan adalah kebohongan, bukan copywriting.

**B7 — Semua tautan dan sitasi diperiksa.** Link mati, DOI yang tidak resolve, dan referensi yang tidak ada adalah tell tingkat konten yang paling merusak.

**B8 — Jangan mengarang pengalaman.** "Saya pernah…" hanya kalau benar pernah. Detail yang dikarang selalu terasa benar sampai ada yang bertanya.

---

## 7. Khusus copywriting (C)

**C1 — Headline = klaim, bukan aspirasi.** "Wujudkan masa depan bisnis Anda" bukan headline. "Tutup buku dalam 3 menit" headline.

**C2 — CTA menyebut hasil atau langkah berikutnya.** "Get Started", "Learn More", "Hubungi Kami" adalah default. "Lihat harga untuk 5 seat", "Coba dengan data Anda", "Jadwalkan 15 menit dengan engineer".

**C3 — Satu audiens, satu pesan.** "Whether you're a freelancer, an agency, or an enterprise" berarti tidak ada yang benar-benar dituju.

**C4 — Tanpa "Say goodbye to X, hello to Y".** Sebut mekanismenya, bukan kontrasnya.

**C5 — Pertanyaan retoris maksimum satu per halaman.** "Siap meningkatkan penjualan? Capek dengan laporan manual?" adalah pembuka template, bukan percakapan.

**C6 — Benefit tanpa bukti = klaim.** Setiap benefit butuh angka, mekanisme, atau demonstrasi. "Lebih cepat, lebih murah, lebih aman" tanpa satu pun bukti adalah triad kosong.

**C7 — Tanpa urgency palsu.** Countdown, "kuota terbatas", "early access" tanpa waitlist adalah kebohongan.

**C8 — Tanpa superlatif yang tidak bisa dipertahankan.** "Terdepan", "revolusioner", "solusi menyeluruh" — ganti dengan fakta yang membuat pembaca menyimpulkan sendiri.

**C9 — Harga dan perbandingan harus benar.** Comparison table melawan kompetitor hanya kalau datanya sudah dicek.

---

## 8. Bahasa Indonesia (I)

**I1 — Diksi default yang perlu dicurigai:** menyelami, merajut, memanfaatkan, mengoptimalkan, mendorong, memperkuat, menyoroti, mengungkap, menavigasi, komprehensif, krusial, fundamental, vital, transformatif, terdepan, inovatif, mulus, mendalam, holistik, signifikan.

**I2 — Frasa default:** "Di era digital yang semakin…", "Dalam dunia yang semakin…", "Bayangkan sebuah dunia di mana…", "Mari kita selami…", "Penting untuk dicatat bahwa…", "Tak dapat dipungkiri bahwa…", "Pada akhirnya…", "Pada dasarnya…", "Yang perlu kita pahami adalah…", "Dengan demikian, dapat disimpulkan bahwa…".

**I3 — Retorika default:** "Ini bukan sekadar X, melainkan Y", "Bukan hanya… tetapi juga…", triad di hampir setiap paragraf.

**I4 — Kurangi pasif beruntun.** "Dapat dilakukan", "telah dilakukan", "perlu diperhatikan" yang menumpuk membuat teks terasa seperti laporan yang ditulis untuk tidak menunjuk siapa pun. Sebut pelakunya.

**I5 — Pecah nominalisasi.** "Peningkatan kualitas" → "kualitas naik". "Pemanfaatan data" → "memakai data". "Pengembangan sistem" → "mengembangkan sistem" atau "sistemnya dikembangkan oleh…".

**I6 — Register mengikuti audiens, bukan buku teks.** Copy AI berbahasa Indonesia hampir selalu terlalu baku: tanpa partikel, tanpa kontraksi, tanpa campur kode. Kalau audiensnya memakai "gak", "sih", "banget", teks yang selalu "tidak" dan "sangat" terasa asing.

**I7 — Jangan memaksakan kerakyatan.** Kebalikannya juga salah: "gue/lo", "jujurly", "literally", dan typo sengaja yang dipaksakan adalah default baru. Pakai register yang benar-benar dipakai audiens, bukan yang sedang tren di X.

**I8 — Hindari calque dari bahasa Inggris.** "Mengambil peran penting" (take an important role), "di akhir hari" (at the end of the day), "membuka potensi" (unlock potential), "perjalanan" untuk proses, "ekosistem" untuk kumpulan produk. Cari padanan yang benar-benar dipakai.

**I9 — Kata "pola" dan sejenisnya.** Beberapa praktisi melaporkan kata seperti "pola", "aspek", "faktor", "peran" muncul begitu sering di output AI Indonesia sehingga jadi penanda. Kalau tiga dari empat paragraf memuatnya, tulis ulang.

**I10 — Panjang kalimat Indonesia wajar lebih pendek dari Inggris.** Kalau hasil terjemahan terasa berliku, itu karena struktur Inggris dipaksakan ke tata bahasa Indonesia.

---

## 9. Proses kerja (R)

1. **Voice spec** (F1) dan **tiga opini** (F2).
2. **Kumpulkan bahan mentah** (F3): angka, nama, kejadian, kutipan.
3. **Tulis pembuka sendiri** (F4), 2–3 paragraf.
4. **Kalau memakai AI:** minta ia bekerja dari sampel itu, dengan instruksi "jangan mengarang angka atau nama" dan "pertahankan ritme kalimat sampel".
5. **Audit** dengan §11. Perbaiki semua item yang gagal.
6. **Baca keras.** Kalimat yang terasa aneh di mulut hampir selalu kalimat yang perlu ditulis ulang.

Yang paling sering berhasil: membongkar struktur, bukan memoles diksi. Mengganti "delve" jadi "explore" tidak mengubah apa pun kalau ritmenya tetap datar.

---

## 10. Daftar terlarang (hard no)

| Kategori | Dilarang |
|---|---|
| Pembuka | "Di era digital…", "Bayangkan…", "Sejak dahulu kala…" |
| Retorika | > 2 "bukan X, tapi Y" per 500 kata; > 1 pertanyaan retoris per halaman |
| Ritme | Semua kalimat 15–20 kata; semua paragraf sama panjang |
| Transisi | Setiap paragraf diawali penghubung; "selain itu" berantai |
| Format | Bold lead-in bullet; Title Case heading; emoji bullet; `---` pemisah |
| Diksi | Buzzword > 2%; metafora kiasan tanpa makna literal |
| Klaim | Angka tanpa sumber; "studi menunjukkan" tanpa nama; superlatif tanpa bukti |
| Bukti | Testimoni/logo/urgency/pricing karangan |
| Artefak | "Sebagai model bahasa AI"; placeholder; sitasi fiktif; link mati |
| Gaya | Typo sengaja; slang dipaksakan untuk "terdengar manusia" |

---

## 11. Gate skor

0–2 per baris (0 = aturan terpenuhi, 2 = default mesin). Total 0–28, **makin rendah makin baik.**

| # | Cek | 0 | 2 |
|---|---|---|---|
| 1 | Diksi | kata yang dipakai penulisnya sendiri | kluster default |
| 2 | Burstiness | ada kalimat ≤ 8 dan ≥ 30 kata | semua 15–20 kata |
| 3 | Paragraf | panjang bervariasi | semua 3–4 kalimat |
| 4 | Tanda baca | koma/kurung/titik dua dipakai wajar | minim, menyambung dengan "dan" |
| 5 | Pembuka | langsung ke klaim | scene-setting generik |
| 6 | Transisi | implisit | > 30% paragraf diawali penghubung |
| 7 | Negation formula | ≤ 1 per 500 kata | > 2 per 500 kata |
| 8 | Triad | sesekali | setiap daftar |
| 9 | Hedging | tegas di hal yang pasti | hedge di semua klaim |
| 10 | Format | prosa untuk prosa | semua bullet + bold |
| 11 | Heading | menjelaskan isi | menggoda |
| 12 | Penutup | klaim baru | ringkasan |
| 13 | Spesifisitas | tukar brand → teks rusak | tukar brand → tetap masuk akal |
| 14 | Bukti | angka bersumber, nama nyata | karangan |

**Lulus jika total ≤ 8 dan tidak ada pelanggaran §10.** Skor 9–18 = campuran, butuh revisi. 19–28 = default mesin yang kuat.

Alat ini untuk diagnosis, bukan bukti. Skor tinggi berarti "banyak default", bukan "pasti AI" — dan tuduhan berdasarkan skor adalah kesalahan, terutama untuk penulis non-native.

---

## 12. Prompt block untuk LLM

Tempel apa adanya ke system prompt atau `CLAUDE.md`.

```
ATURAN MENULIS — WAJIB, BUKAN SARAN

SEBELUM MENULIS:
- Baca sampel suara penulis yang disediakan. Tiru ritmenya, bukan hanya kosakatanya.
- Jangan mengarang angka, nama, kutipan, testimoni, atau sumber. Kalau data tidak
  ada, tulis "TODO: data" dan lanjut.
- Tentukan satu klaim utama yang bisa dibantah. Kalau tidak ada, tanya dulu.

DILARANG:
- Pembuka "Di era digital yang semakin...", "Bayangkan sebuah dunia...", "Sejak dulu...".
- "Ini bukan sekadar X, melainkan Y" lebih dari sekali per 500 kata.
- Triad di setiap daftar ("cepat, tepat, akurat").
- Setiap paragraf diawali kata transisi (selain itu, dengan demikian, oleh karena itu).
- Semua kalimat panjangnya 15-20 kata. Semua paragraf 3-4 kalimat.
- Bold lead-in bullet (**Kata:** penjelasan), Title Case heading, emoji bullet, "---".
- "Studi menunjukkan", "para ahli sepakat" tanpa nama.
- Angka bulat tanpa sumber ("10.000+", "99%"), superlatif tanpa bukti.
- "Sebagai model bahasa AI", "Mau saya sesuaikan?", placeholder di draf final.
- Slang atau typo yang dipaksakan supaya "terdengar manusia".
- Kata: menyelami, merajut, memanfaatkan, komprehensif, krusial, fundamental,
  transformatif, terdepan, mulus, holistik, signifikan, lanskap, ranah, kanvas.

WAJIB:
- Dalam 500 kata: minimal satu kalimat <= 8 kata dan satu kalimat >= 30 kata.
- Panjang paragraf bervariasi. Maksimum 30% paragraf diawali transisi.
- Maksimum 3 hedge per paragraf. Klaim pasti ditulis tanpa hedge.
- Verba konkret, bukan nominalisasi ("naik 30%", bukan "mengalami peningkatan").
- Kalau memakai em dash: maksimum satu per 500 kata.
- Heading menjelaskan isi, bukan menggoda.
- Penutup membawa klaim baru, bukan ringkasan.
- Setiap angka punya sumber. Setiap atribusi punya nama.
- Prosa untuk argumen, bullet hanya untuk daftar sungguhan.

SETELAH MENULIS:
- Audit terhadap daftar ini dan laporkan setiap pelanggaran.
- Baca keras. Kalimat yang canggung didengar ditulis ulang.
- Jangan tampilkan hasil sebelum audit bersih.
```

---

## 13. Yang bukan pelanggaran

Supaya tidak overcorrect:

- **Em dash** — dipakai wajar, sesekali, adalah tanda penulis yang peduli tanda baca, bukan AI
- **Kalimat panjang** — selama ada kalimat pendek di sekitarnya
- **Register formal** — cocok untuk dokumen resmi; yang salah adalah formal sebagai default untuk semua audiens
- **Kata "delve", "komprehensif", "krusial"** dalam pemakaian teknis yang tepat
- **Bullet list** untuk daftar yang memang berisi item setara
- **Metafora** yang literal-test-nya lolos
- **Pola non-native** — kalimat yang terasa diterjemahkan adalah ciri penulis multibahasa, bukan mesin
- **Minimalisme** — teks pendek yang padat bukan "AI yang tidak selesai"

Yang membedakan selalu **pilihan dan alasan**, bukan ada atau tidaknya fitur. Sama seperti pada desain: satu penanda tidak membuktikan apa pun; yang membuktikan adalah akumulasi default tanpa satu pun keputusan yang mengompensasi.
