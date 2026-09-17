Oke, ini ada dua kisi-kisi ujian yang berbeda—satu soal backend/REST API (14 materi) dan satu soal Pemrograman Mobile dengan Flutter (10 materi). Aku jelasin satu-satu ya.

## Kisi-Kisi Kelas XI RPL (Backend & REST API)

**1. REST API** — Arsitektur untuk komunikasi antara client (misal aplikasi/browser) dan server lewat HTTP. REST API jadi "jembatan" yang memungkinkan dua sistem berbeda saling bertukar data.

**2. Endpoint** — URL spesifik di server yang merespons permintaan tertentu, misalnya `/api/users` untuk data user. Setiap endpoint biasanya mewakili satu resource atau aksi.

**3. HTTP Method** — Cara client memberi tahu server aksi apa yang diinginkan:
- `GET` — mengambil data
- `POST` — menambah data baru
- `PUT/PATCH` — mengubah data (PUT ganti seluruh data, PATCH sebagian)
- `DELETE` — menghapus data

**4. HTTP Status Code** — Kode angka yang dikirim server sebagai respons hasil request:
- `200` OK (berhasil), `201` Created (data baru berhasil dibuat)
- `400` Bad Request (request salah/format tidak valid)
- `404` Not Found (resource tidak ditemukan)
- `500` Internal Server Error (error di sisi server)

**5. JSON** — Format data ringan (JavaScript Object Notation) berbentuk key-value yang dipakai untuk mengirim/menerima data antara client dan server, karena mudah dibaca manusia dan mesin.

**6. Express.js Basic** — Framework Node.js untuk membangun server dengan cepat. Mencakup cara membuat server, routing (mengatur endpoint), middleware (fungsi perantara sebelum request diproses), serta menangani request dan response.

**7. Routing** — Cara menghubungkan endpoint tertentu (path) dengan HTTP method dan fungsi yang menanganinya. Contoh: `app.get('/users', handlerFunction)`.

**8. Request & Response** — Alur data masuk (request dari client, berisi data/parameter) dan data keluar (response dari server, berisi hasil/data). `req` dipakai membaca data masuk, `res` dipakai mengirim balasan.

**9. CRUD** — Empat operasi dasar pengelolaan data: **C**reate (buat), **R**ead (baca), **U**pdate (ubah), **D**elete (hapus).

**10. CRUD pada REST API** — Pemetaan operasi CRUD ke HTTP method: Create→POST, Read→GET, Update→PUT/PATCH, Delete→DELETE.

**11. Database** — Bagaimana API terhubung ke database untuk mengambil, menambah, mengubah, atau menghapus data secara persisten (tidak hilang saat server restart).

**12. Validasi Data** — Proses memastikan data yang dikirim client sesuai aturan (tipe data benar, field wajib terisi, dll) sebelum diproses server, untuk mencegah data salah/error masuk ke sistem.

**13. Pemahaman Kode** — Kemampuan membaca dan menjelaskan kode yang sudah dibuat sendiri: fungsi tiap bagian dan alasan penggunaannya.

**14. Alur Program** — Memahami urutan alur data: **Client → Endpoint → Server → Database → Response**. Client kirim request ke endpoint, server memproses (kadang query ke database), lalu server mengirim response balik ke client.

## Kisi-Kisi Pemrograman Mobile (Flutter/Dart)

**1. Tipe Data** — Jenis data di Dart: `int`, `double`, `String`, `bool`, `List`, `Map`, dll.

**2. Deklarasi** — Cara mendeklarasikan variabel di Dart: `var`, `final`, `const`, atau tipe eksplisit seperti `int x = 5;`. `final`/`const` untuk nilai yang tidak berubah.

**3. Widget** — Unit dasar pembangun UI di Flutter. Semua yang tampil di layar (teks, tombol, layout) adalah widget.

**4. StatefulWidget & StatelessWidget** — `StatelessWidget` untuk UI yang tidak berubah (statis), `StatefulWidget` untuk UI yang bisa berubah (punya state) seperti form atau counter.

**5. Input Form** — Cara membuat form input (`TextField`, `TextFormField`) untuk menerima input dari pengguna, biasa dipakai bersama `Form` widget untuk validasi.

**6. Navigator** — Mekanisme perpindahan antar halaman (screen) di Flutter, misalnya `Navigator.push()` untuk pindah ke halaman baru dan `Navigator.pop()` untuk kembali.

**7. Package** — Library eksternal yang bisa ditambahkan ke project Flutter lewat `pubspec.yaml` untuk menambah fitur tanpa menulis kode dari nol.

**8. Asset & Fonts** — Cara menambahkan file gambar, font custom, dll ke project lewat folder assets dan mendaftarkannya di `pubspec.yaml`.

**9. REST API** — Sama seperti di atas: memahami dan menerapkan komunikasi client-server berbasis REST di aplikasi Flutter.

**10. Implementasi REST API** — Cara mengambil data dari API (misal pakai package `http`) dan menampilkannya di UI Flutter, biasanya dengan `FutureBuilder` atau state management.

---

Ringkasnya: kisi-kisi pertama fokus ke **backend** (bagaimana server dan API bekerja), sementara kisi-kisi kedua fokus ke **frontend mobile** (bagaimana membangun UI dan menghubungkannya ke API). Kalau ada topik tertentu yang mau digali lebih dalam atau minta contoh kode, tinggal bilang aja.


Dependencies adalah library atau package pihak ketiga yang ditambahkan ke dalam project untuk memberikan fungsi tertentu, tanpa harus menulis kodenya sendiri dari awal.


Import — perintah untuk memanggil/menggunakan kode dari file atau package lain ke dalam file yang sedang kamu kerjakan, supaya bisa pakai fungsi, class, atau variabel yang ada di situ tanpa harus menulis ulang.

Export — kebalikannya, yaitu "membuka akses" supaya kode (fungsi, class, variabel) di suatu file bisa dipakai/diimport oleh file lain.


req.body adalah bagian dari objek request (req) yang berisi data yang dikirim client ke server, biasanya lewat method POST, PUT, atau PATCH.


Database tahu data mana yang mau dihapus lewat primary key (id) yang dikirim di request — biasanya lewat parameter URL (req.params).