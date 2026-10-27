# Aturan on-page SEO

**Versi 1.0** · Disusun dari riset "Aturan On-Page SEO" untuk amospa.com dan situs klien (Mousmedia, 27 Oktober 2026). Contoh memakai amospa.com; ganti nama, harga, dan fasilitas dengan fakta situs Anda.

**Cara pakai:** baca [`SKILL.md`](../SKILL.md) untuk alur kerja dan checklist. Halaman ini rincian per elemen.

**Sifat dokumen:** membedakan aturan mesin, aturan tool, dan keputusan kerja. Angka yang bukan aturan mesin dicatat di [sumber.md](sumber.md).

---

## 1. Peta elemen

Tiap elemen punya fungsi berbeda dan tidak bisa saling menggantikan. Mengharapkan satu elemen menyelesaikan semuanya adalah sumber kekecewaan yang paling umum.

| Elemen | Fungsi utama | Ranking | Klik | Target kerja |
|---|---|---|---|---|
| Keyword | Halaman mana yang menjawab query | Tinggi | Tidak | 1 utama, 3–7 support |
| Title | Judul di hasil pencarian | Sedang | Tinggi | 50–60 karakter |
| Meta description | Iklan di bawah judul | Tidak | Sedang | 140–160 karakter |
| Slug | Alamat dan breadcrumb | Sangat rendah | Rendah | 2–5 kata |
| H1 | Judul yang dilihat pengunjung | Rendah | Rendah | Satu per halaman |
| H2 dan H3 | Struktur dan pindai cepat | Rendah | Rendah | 4–8 H2 |
| Isi halaman | Menjawab niat pencarian | Tinggi | Sedang | Cakupan, bukan panjang |
| Alt dan nama file | Pencarian gambar | Rendah | Rendah | 5–12 kata |
| Internal link | Menyebar otoritas | Sedang | Sedang | 3–6 per halaman |
| Schema | Rich result | Tidak langsung | Rendah | Sesuai jenis halaman |
| Core Web Vitals | Pengalaman halaman | Rendah | Sedang | 2,5 s / 200 ms / 0,1 |

Kolom pengaruh adalah penilaian relatif, bukan angka yang bisa diukur. Google tidak menerbitkan bobot antar elemen, dan setiap halaman punya persaingan berbeda.

---

## 2. Keyword

### 2.1 Satu halaman, satu keyword utama

Halaman ditulis untuk satu query utama. Query itu yang menentukan title, H1, slug, dan susunan bagian. Kalau satu halaman mengejar dua query yang niatnya berbeda, keduanya kalah.

Empat syarat keyword utama: ada volume, niatnya cocok dengan jenis halaman, belum ada halaman lain di situs yang mengejarnya, dan halaman ini memang bisa memenuhinya. Halaman venue tidak bisa memenangkan query yang jawabannya berupa daftar sepuluh tempat.

Contoh pemetaan, bukan keputusan final per halaman:

| Halaman | Keyword utama | Alasan | Support keyword |
|---|---|---|---|
| /amo-spa/ | balinese massage canggu | Halaman venue dengan daftar massage dan harga | healing massage bali, couples massage canggu, body scrub bali |
| /amo-baths/ | bathhouse bali | Halaman induk semua fasilitas bathhouse | turkish hammam bali, ice bath bali, sauna canggu |
| /amo-cafe/ | amo cafe canggu | Query brand dan lokasi dengan niat lokal | tapas canggu, cafe batu bolong, coworking canggu |
| /amo-suksma/ | bali wellness community | Halaman ruang komunitas dan workshop | bali community, workshop space canggu, meditation canggu |

Yang tetap: satu keyword utama per URL, dan support keyword dipilih setelah struktur halaman disusun, bukan sebelum.

### 2.2 Support keyword

Support keyword bukan keyword kedua. Fungsinya menutup varian dan pertanyaan di sekitar keyword utama. Jumlahnya 3–7. Lebih dari itu biasanya hanya menambah bagian tanpa menambah cakupan.

- Satu support keyword, satu bagian. Kalau keyword tidak mendapat tempat yang wajar di struktur, itu tanda keyword tersebut tidak dibutuhkan halaman ini.
- Pilih varian yang benar-benar dicari. Sinonim, ejaan lain, bentuk jamak, dan nama fasilitas lebih berharga daripada terjemahan yang tidak pernah diketik orang.
- Jangan memaksakan niat yang berbeda. "eco friendly spa bali" bertujuan transaksional, jadi tempatnya di halaman spa, bukan di halaman komunitas.
- Support keyword yang tidak masuk struktur dipindahkan atau dihapus. Menumpuknya di akhir halaman sebagai daftar tidak menambah apa pun.

### 2.3 Kanibalisasi

Satu keyword hanya boleh punya satu URL tujuan. Kalau dua halaman mengejar frasa yang sama, Google memilih satu, dan biasanya bukan yang kita inginkan.

- Cek di Search Console. Buka Performance, filter query, lihat URL yang tampil. Kalau dua URL bergantian untuk query yang sama, itu kanibalisasi.
- Blog boleh membahas, tidak boleh mengejar. Artikel tidak memakai frasa utuh di title dan H1, dan menaut ke halaman tujuan.
- Urutan tindakan: perbaiki internal link, ukur 4 minggu, lalu gabungkan dengan 301 kalau URL yang salah tetap muncul.
- Redirect paling akhir. 301 sulit dibatalkan tanpa kehilangan waktu, jadi jangan dipakai sebagai langkah pertama.

### 2.4 Bahasa keyword

Keyword mengikuti bahasa audiens, bukan bahasa pemilik situs. amospa.com menjual ke turis dan ekspat, jadi keyword-nya bahasa Inggris: balinese massage canggu, bukan massage bali canggu.

- Satu halaman satu bahasa. Jangan mencampur frasa Indonesia dan Inggris dalam satu title atau heading.
- Nama brand satu ejaan. AMO, bukan Amo, AMO SPA, atau Amo Spa. Ejaan berbeda memecah entitas dan terlihat sebagai salah ketik.
- Situs berbahasa Indonesia memakai aturan yang sama arahnya. Keyword Indonesia, slug Indonesia, tanpa sisipan Inggris yang tidak dicari.

### 2.5 Lima titik penempatan

Tidak perlu menaruh keyword di semua tempat. Lima titik berikut yang wajib, sisanya opsional dan hanya dipakai kalau natural.

| Titik | Wajib | Bentuk | Catatan |
|---|---|---|---|
| Title | Ya | Frasa utuh di 25–30 karakter pertama | Paling berpengaruh ke klik |
| H1 | Ya | Frasa utuh, boleh ditambah kata | Boleh berbeda dari title |
| 100 kata pertama | Ya | Satu kali, dalam kalimat yang menjelaskan halaman | Paragraf pembuka, bukan kalimat tempelan |
| Satu H2 | Ya | Frasa utuh atau varian dekat | Cukup satu |
| Meta description | Ya | Frasa utuh di awal | Kalau tidak muat, pakai varian |
| Alt gambar hero | Opsional | Deskripsi yang memuat keyword bila sesuai | Hanya kalau gambar memang menampilkannya |
| Anchor internal link | Opsional | Varian, bukan selalu frasa utuh | Variasi anchor lebih aman |
| Slug | Opsional | Frasa utuh kalau pendek | Jangan dipaksa sampai enam kata |

---

## 3. Meta title

### 3.1 Angka yang dipakai

Title ditulis 50–60 karakter. Pada ukuran huruf hasil pencarian, 60 karakter huruf Latin kira-kira 580–600 piksel, dan itu batas tampilan di desktop. Di ponsel potongannya terjadi lebih awal, sekitar 50 karakter. Angka piksel ini hasil pengukuran tool, bukan angka resmi Google.

Google tidak membatasi panjang title. Yang terjadi adalah pemotongan tampilan. Angka di atas karena itu target tampilan, bukan aturan mesin.

- Frasa utuh di 25–30 karakter pertama. Kata pertama yang terbaca paling menentukan.
- Brand di belakang, dipisah " – " atau " | ". Satu kali saja. Jangan diulang di awal dan di akhir.
- Satu title satu halaman. Tidak ada title yang dipakai dua halaman, termasuk halaman pagination.
- Tanpa huruf kapital semua, emoji, dan tanda seru. Tanpa "terbaik" yang tidak bisa dibuktikan.
- Fakta boleh masuk kalau membedakan: harga mulai, jam buka, atau tanpa booking.

Contoh:

| Halaman | Title | Karakter |
|---|---|---|
| /amo-spa/ | Balinese Massage Canggu – Healing Treatments at AMO Spa | 55 |
| /amo-baths/ | Bathhouse Bali – Sauna, Hammam & Ice Bath in Canggu | 51 |
| /amo-cafe/ | AMO Cafe Canggu – Tapas, Coffee & Wi-Fi near Batu Bolong | 56 |
| /amo-suksma/ | Bali Wellness Community – Workshops & Meditation in Canggu | 58 |

Kenapa brand di belakang: di hasil pencarian, nama situs sudah tampil sebagai site name di atas judul. Menaruh brand di depan memakan 8–12 karakter yang seharusnya dipakai keyword dan pembeda.

### 3.2 Kapan Google menulis ulang title

Google menyusun title link dari beberapa sumber: elemen title, judul visual di halaman, heading, og:title, dan teks anchor dari situs lain. Kalau elemen title dinilai tidak akurat, terlalu panjang, atau berisi boilerplate, Google memakai teks lain.

| Kondisi | Akibat |
|---|---|
| Keyword diulang-ulang | Dinilai stuffing, teks lain dipakai |
| Boilerplate di banyak halaman | Google menambal dengan informasi dari halaman |
| Title kosong atau setengah | Diambil dari heading atau judul visual |
| Bahasa title beda dari isi | Diganti agar cocok dengan bahasa halaman |
| Brand diulang padahal sudah tampil sebagai site name | Dihapus dari title link |

Implikasi: H1, og:title, dan title ditulis sejalan. Kalau Google mengganti title, teks pengganti tetap memuat keyword dan tetap masuk akal. Title yang bergantung pada satu kata kunci di akhir akan kehilangan makna begitu Google memotongnya.

### 3.3 Template plugin

Banyak situs kehilangan 10–15 karakter karena template plugin menambahkan nama situs otomatis. Yang dihitung adalah hasil akhir yang tampil di sumber halaman, bukan isian di kolom SEO plugin.

- Cek di sumber halaman atau pratinjau SERP, bukan hanya indikator warna di plugin.
- Matikan suffix otomatis kalau nama situs sudah tampil sebagai site name.
- Template otomatis hanya untuk halaman arsip yang tidak menyasar keyword. Halaman uang ditulis satu per satu.

### 3.4 Title yang tidak dipakai

| Contoh | Masalah |
|---|---|
| Bathhouse Bali \| Bathhouse Bali \| AMO Spa | Keyword diulang tiga kali |
| Best Bathhouse in Bali – Book Now! | Klaim tanpa bukti, tanda seru |
| Bathhouse in Bali – AMO | Frasa terpotong kata "in", keyword tidak utuh |
| AMO Baths | Terlalu pendek, tidak menjelaskan apa pun |
| Bathhouse Bali – Sauna, Hammam, Ice Bath, Cold Plunge, Jacuzzi, Pool, Cafe | Terlalu panjang, terpotong sebelum pembeda terbaca |

---

## 4. Meta description

Meta description bukan faktor ranking. Google memilih sendiri potongan teks yang ditampilkan, dan sering memakai isi halaman. Tetap ditulis karena dua alasan: memengaruhi klik, dan dipakai mesin lain seperti WhatsApp, LinkedIn, dan beberapa layanan pencarian AI.

- 140–160 karakter. Desktop memotong sekitar 920 piksel (perkiraan tool), ponsel lebih pendek.
- Empat bagian: keyword, dua fakta yang dicari (harga, jam, lokasi, tanpa booking), satu pembeda, satu ajakan.
- Satu description satu halaman. Duplikat antar halaman adalah kesalahan yang paling mudah terdeteksi.
- Jangan menjanjikan yang tidak ada di halaman. Description yang menjanjikan program yang tidak ada menurunkan kepercayaan dan klik.
- Kalau Google mengganti, tidak perlu diperbaiki. Yang diperiksa: apakah teks pengganti memuat fakta yang benar.

| Konteks | Description | Karakter |
|---|---|---|
| /amo-spa/ | Balinese massage Canggu at AMO Spa: traditional and healing massage, couples treatments and body scrubs on Batu Bolong. Open daily. Book online or by WhatsApp. | 159 |
| /amo-baths/ | Bathhouse Bali at AMO Baths, Canggu: two saunas, Turkish hammam, ice baths and ice barrels for contrast therapy. No booking needed. Open daily 8am–10pm. | 152 |
| Buruk | Massage Canggu, spa Canggu, balinese massage, cheap massage Canggu, best spa in Canggu | 86 |

Cara memeriksa: buka hasil pencarian untuk keyword utama, lihat description yang tampil. Kalau yang tampil bukan tulisan sendiri, Google memilih teks halaman. Itu bukan kesalahan, tetapi tanda bahwa paragraf pertama perlu memuat fakta yang sama.

---

## 5. Slug dan URL

Slug dibaca manusia di breadcrumb dan di hasil pencarian. Fungsinya orientasi, bukan ranking. Google menyebut keyword di path URL "hardly any effect beyond appearing in breadcrumbs".

- 2–5 kata, huruf kecil, tanda hubung. Tanpa underscore, spasi, atau huruf kapital.
- Tanpa stop word yang tidak perlu. "the", "and", dan "in" dibuang kalau slug tetap terbaca.
- Tanpa tanggal, ID, atau nama file. /amo-baths/ lebih baik daripada /page-id-482/.
- Satu bahasa untuk seluruh situs. Jangan /spa-canggu/ lalu /bathhouse-bali/.
- Keyword di depan kalau pendek. /ice-bath-sauna-canggu/ lebih baik daripada /the-best-ice-bath-and-sauna-in-canggu-bali/.

| Kondisi | Tindakan |
|---|---|
| Salah eja nama brand, misalnya /amo-spaa/ | Ubah, 301, perbarui semua internal link |
| Bahasa slug salah untuk audiens | Ubah dengan 301, hanya kalau halaman belum punya backlink |
| Slug benar tetapi kurang keyword | Jangan diubah. Keuntungan ranking kecil, risiko kehilangan sinyal besar |
| Dua slug untuk isi yang sama | Pilih satu, 301 yang lain, perbarui sitemap |
| Halaman baru | Tentukan sebelum publish. Setelah itu slug dianggap permanen |

Setiap perubahan slug wajib disertai 301, pembaruan internal link, dan pengiriman ulang sitemap. Tanpa itu halaman kehilangan sinyal dan pengunjung dari hasil pencarian lama. Mengubah slug halaman yang sudah berumur adalah pekerjaan berisiko, bukan pekerjaan cepat.

---

## 6. Struktur heading

Heading adalah daftar isi yang dibaca mesin dan manusia. Aturannya sederhana: satu H1, H2 untuk bagian, H3 hanya untuk sub-bagian.

- 1 H1. Isinya judul halaman, bukan nama brand saja.
- 4–8 H2. Di bawah 4 halaman biasanya kurang terstruktur; di atas 8 bagiannya terlalu tipis.
- H3 hanya di bawah H2, dan hanya kalau sub-bagian itu punya isi sendiri.
- Tanpa H4–H6 kecuali halaman panduan panjang. Untuk halaman venue, tiga level cukup.

Urutan heading tidak memengaruhi ranking. Dokumentasi Google menyebut urutan semantik penting untuk screen reader, tetapi dari sisi Search "it doesn't matter if you're using them out of order". Yang tetap penting: heading harus menjelaskan isi bagian di bawahnya.

Karena itu aturan keyword di heading dibuat ketat. Frasa utuh maksimal di dua heading: H1 dan satu H2. Sisa heading memakai varian, nama fasilitas, atau pertanyaan. Menaruh keyword di semua heading membuat outline terbaca seperti daftar keyword, dan itu juga yang dinilai Google sebagai stuffing.

Uji outline: baca hanya heading-nya. Kalau urutannya sudah memberi gambaran lengkap tentang halaman, strukturnya benar. Kalau ada heading yang isinya hanya mengulang heading sebelumnya, hapus.

| Level | Isi | Contoh |
|---|---|---|
| H1 | Keyword utama dan pembeda | Balinese Massage Canggu at AMO Spa |
| H2 | Bagian layanan | Traditional Balinese Massage at AMO |
| H3 | Satu item layanan | Relax Me |
| H2 | Cara kerja atau proses | Balinese Massage Techniques We Use |
| H2 | Harga | Balinese Massage Canggu Prices |
| H2 | Tentang | About AMO Spa |
| H2 | Jam buka | Opening Hours |
| H2 | Lokasi | Find Us in Batu Bolong |
| H2 | FAQ | Frequently Asked Questions, dengan H3 per pertanyaan |

---

## 7. Gambar

### 7.1 Nama file

- Kebab-case, 3–6 kata. Huruf kecil, tanda hubung, tanpa spasi.
- Tanpa prefix kamera. IMG_, DSC_, atau angka acak dibuang.
- Deskriptif dan spesifik. balinese-massage-room-amo-spa.webp, bukan spa1.webp.
- Ekstensi sesuai format sebenarnya. WebP ya .webp, bukan .jpg.
- Satu gambar satu URL. Jangan memakai URL berbeda untuk gambar yang sama di beberapa halaman.

Google menyebut nama file memberi "very light clues" tentang isi gambar. Artinya ini optimasi kecil. Yang lebih besar pengaruhnya adalah alt, teks di sekitar gambar, dan halaman tempat gambar berada. Jangan menghabiskan waktu di nama file sementara alt masih kosong.

### 7.2 Alt text

- 5–12 kata. Menjelaskan apa yang terlihat dan konteksnya.
- Tanpa "gambar" atau "foto" di awal. Screen reader sudah membacakan itu.
- Keyword hanya kalau menggambarkan. Delapan gambar fasilitas tidak semuanya perlu "bathhouse bali".
- Gambar dekoratif memakai alt kosong (alt=""), bukan alt yang dihilangkan.
- Gambar yang menjadi link: alt menjelaskan tujuan link, bukan isi gambar.

| Konteks | Alt | Penilaian |
|---|---|---|
| Sauna di /amo-baths/ | sauna | Terlalu umum |
| Sauna di /amo-baths/ | Swedish sauna at AMO Baths, Canggu | Baik: objek, nama, lokasi |
| Ice plunge | ice bath bali ice bath bali cold plunge | Stuffing |
| Ice plunge | Ice plunge at 12–15°C in the AMO Baths circuit | Baik: fakta spesifik |
| Gambar dekoratif | (kosong) | Benar: alt="" |

### 7.3 Teknis

- WebP atau AVIF. JPEG dan PNG hanya kalau ada alasan.
- Lebar maksimal 1.600 px untuk gambar isi, 2.400 px untuk hero full-width.
- Ukuran file di bawah 200 KB untuk gambar isi, di bawah 100 KB untuk thumbnail.
- width dan height selalu ditulis supaya CLS tidak naik.
- Lazy-load semua gambar kecuali hero. Hero memakai fetchpriority="high".
- Sertakan di image sitemap kalau situs punya banyak gambar dan ingin muncul di Google Images.

---

## 8. Keyword density dan distribusi

Tidak ada angka keyword density yang benar. Google menegaskan berulang kali bahwa ini bukan sinyal yang dipakai. John Mueller: "Keyword density, in general, is something I wouldn't focus on. Make sure your content is written in a natural way." Yang dipakai Google adalah pemahaman isi, dan pengulangan yang tidak wajar justru masuk kategori keyword stuffing.

Target persentase diganti dua ukuran yang bisa diperiksa: jumlah kemunculan frasa utuh, dan jarak antar kemunculan.

- 2–4 kemunculan frasa utuh per 700 kata isi, di luar title dan meta description.
- Jarak minimal satu paragraf. Dua kemunculan dalam satu paragraf hampir selalu terbaca dipaksakan.
- Halaman di bawah 400 kata: dua kemunculan cukup.
- Halaman di atas 1.200 kata: empat sampai enam kemunculan wajar selama tersebar.
- Varian tidak dihitung, tetapi tetap membantu. "massage in Canggu", "Balinese massage", dan "perawatan Bali" ikut membangun topik.

| Metrik | Sebagai target | Sebagai alarm |
|---|---|---|
| Density persen | Tidak | Ya: di atas 2,5% untuk frasa utama, periksa paragrafnya |
| Jumlah frasa utuh | Ya | Ya: di bawah 2 pada halaman di atas 500 kata |
| Kemunculan per bagian | Ya | Ya: tiga kali di satu bagian, pindahkan satu |
| Skor plugin | Tidak | Tidak. Skor 100 tidak menjamin apa pun |

Density dipakai sebagai alarm, bukan target. Kalau sebuah paragraf memuat frasa utama dua kali, pindahkan satu. Kalau seluruh halaman hanya memuat sekali, periksa lima titik penempatan sebelum menambah.

Yang lebih menentukan daripada density adalah cakupan topik. Halaman yang menjawab pertanyaan harga, jam, lokasi, fasilitas, dan cara booking akan mengalahkan halaman yang mengulang keyword yang sama sepuluh kali.

---

## 9. Isi halaman

Panjang halaman tidak dinilai. Google menyebut tidak ada jumlah kata minimum atau maksimum, dan rata-rata panjang halaman pesaing bukan target karena jenis halamannya bisa berbeda. Listicle 3.000 kata dan halaman venue 600 kata bersaing dengan aturan yang berbeda.

- Setiap bagian menjawab satu pertanyaan yang muncul sebelum orang memesan: apa itu, untuk siapa, berapa, di mana, kapan, bagaimana caranya.
- Paragraf 2–4 kalimat. Fakta berderet ditulis sebagai daftar atau tabel.
- Tabel harga berupa HTML statis, bukan widget, gambar, atau PDF.
- FAQ 4–6 pertanyaan, jawaban 40–60 kata, pertanyaannya ditulis seperti orang bertanya.
- Satu fakta satu sumber. Harga, jam buka, nama fasilitas, dan tahun berdiri harus sama di isi, schema, dan halaman lain.
- Tanpa klaim yang tidak bisa dibuktikan. "Terbaik di Bali", "nomor satu", dan "menyembuhkan" adalah risiko, bukan pembeda.
- Tanpa halaman massal untuk variasi keyword. Google menyebutnya scaled content abuse.

E-E-A-T bukan ranking factor, tetapi pengalaman nyata adalah pembeda termurah: tahun berdiri, suhu air, jumlah sauna, nama treatment, sertifikasi terapis. Fakta spesifik seperti ini tidak bisa ditiru kompetitor yang menulis dari template, dan itu juga yang membuat halaman layak dikutip.

---

## 10. Internal link

- 3–6 link kontekstual keluar dari setiap halaman. Link navigasi dan footer tidak dihitung.
- Minimal satu link masuk dari halaman induk dengan anchor yang memuat topik.
- Anchor menjelaskan tujuan. "Balinese massage in Canggu", bukan "klik di sini" atau "selengkapnya".
- Variasikan anchor. Tiga link masuk dengan anchor identik terbaca sebagai manipulasi.
- Link ke halaman uang dari setiap bagian yang menyebut harga atau paket.

| Jenis link | Jumlah | Contoh |
|---|---|---|
| Masuk dari halaman induk | 1–3 | Homepage "Explore AMO Spa" ke /amo-spa/ |
| Kontekstual keluar | 3–6 | Dari /amo-spa/ ke /book-now/ dan /amo-baths/ |
| Silang antar venue | 2–3 | /amo-baths/, /amo-spa/, /amo-cafe/ saling menaut |
| Dari artikel blog | 1 per artikel | Anchor bervariasi, menuju halaman venue |

Untuk halaman yang tumpang tindih, tautkan dulu dan ukur 4 minggu sebelum memutuskan penggabungan. Data Search Console yang menentukan, bukan perasaan bahwa dua halaman mirip.

---

## 11. Sinyal teknis yang ikut menentukan

On-page tidak selesai di teks. Empat hal ini menentukan apakah pekerjaan teks terlihat hasilnya.

- Indexability. Halaman uang tidak noindex, tidak diblokir robots.txt, dan canonical menunjuk ke dirinya sendiri.
- Rendering. Isi harus ada di HTML. Tab dan accordion boleh dipakai dan bukan pelanggaran, tetapi fakta utama sebaiknya tetap tampil tanpa klik, karena Google lebih mudah menampilkan deep link ke konten yang langsung terlihat.
- Core Web Vitals. LCP di bawah 2,5 detik, INP di bawah 200 milidetik, CLS di bawah 0,1, diukur pada ponsel.
- Schema. Harus sama dengan isi yang terlihat; harga di schema sama dengan harga di halaman. FAQPage boleh dipasang, tetapi rich result-nya dibatasi sejak 2023.

---

## 12. Aturan tool dan aturan mesin

Tool berguna untuk memeriksa kelengkapan, tetapi tidak untuk menentukan strategi. Tabel ini memuat rekomendasi tool yang paling sering muncul dan keputusan yang diambil.

| Rekomendasi tool | Ikuti | Alasan |
|---|---|---|
| Keyword di URL | Tidak wajib | Pengaruh sangat kecil; risiko redirect lebih besar |
| H1 maksimal 40 karakter | Tidak | Batas tool, bukan batas Google |
| Keyword density 1–2% | Tidak | Bukan faktor ranking |
| Frasa kunci di semua heading | Tidak | Terbaca sebagai stuffing |
| Panjang isi mengikuti rata-rata SERP | Tidak | Jenis halaman pesaing bisa berbeda |
| Alt text memuat keyword | Sebagian | Hanya kalau keyword menggambarkan gambar |
| Meta description 155 karakter | Ya, sebagai target tampilan | Bukan aturan mesin, tetapi cocok dengan lebar tampilan |

Aturan kerjanya: tool dipakai untuk memastikan tidak ada elemen yang kosong, bukan untuk menaikkan skor. Skor 95 dengan title yang tidak menarik kalah dari skor 70 dengan title yang menjawab query. Skor tetap dicatat sebagai pembanding antar waktu, bukan sebagai target.

---

## 13. Mitos yang dibuang

| Mitos | Kenyataan | Dasar |
|---|---|---|
| Keyword density 1–2% | Tidak ada angka yang benar, dan density bukan sinyal yang dipakai | Mueller; Ahrefs |
| Keyword harus ada di semua heading | Cukup H1 dan satu H2, sisanya varian | Kebijakan keyword stuffing |
| Minimal 1.500 kata | Tidak ada jumlah kata minimum atau maksimum | SEO Starter Guide |
| E-E-A-T adalah ranking factor | Bukan | SEO Starter Guide |
| Keyword di URL penting | Sangat kecil, hanya terlihat di breadcrumb | URL structure; Starter Guide |
| Alt text harus memuat keyword | Alt menjelaskan gambar, keyword hanya kalau sesuai | Image SEO |
| H1 harus sama dengan title | Boleh berbeda, fungsinya berbeda | Title link |
| Meta description menentukan ranking | Tidak, hanya memengaruhi klik | Snippet |
| Urutan heading memengaruhi ranking | Tidak, penting untuk aksesibilitas | SEO Starter Guide |

Kalau ada rekomendasi yang tidak punya dasar di kolom ketiga, perlakukan sebagai hipotesis. Uji di satu halaman, ukur 4 minggu, baru jadikan aturan.

---

## 14. Sumber

Dokumentasi Google Search Central, diakses 27 Oktober 2026. Halaman-halaman ini berubah tanpa pemberitahuan, jadi periksa ulang kalau ada aturan yang terasa bertentangan.

Daftar lengkap tautan, pengukuran tool, dan angka mana yang cuma keputusan kerja ada di [sumber.md](sumber.md).
