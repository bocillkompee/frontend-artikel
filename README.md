# Frontend Artikel

Frontend aplikasi artikel/blog yang dibuat menggunakan **Flutter** dan terhubung dengan REST API dari backend Blog App.

Aplikasi ini digunakan untuk menampilkan, menambahkan, mengubah, dan menghapus artikel serta mengelola kategori.

##  Teknologi

* Flutter
* Dart
* HTTP
* Image Picker
* REST API
* Cloudinary

##  Struktur Project

```text
frontend-artikel/
└── blog_app_ujilevel/
    ├── lib/
    │   ├── models/
    │   ├── screens/
    │   ├── services/
    │   └── main.dart
    ├── android/
    ├── web/
    ├── pubspec.yaml
    └── ...
```

##  Fitur

* Menampilkan daftar artikel
* Melihat detail artikel
* Menambahkan artikel
* Mengedit artikel
* Menghapus artikel
* Memilih kategori artikel
* Upload gambar artikel
* Terhubung dengan REST API backend
* Mendukung Flutter Web

##  Persyaratan

Pastikan sudah terinstall:

* Flutter
* Dart
* Android Studio / Android SDK (jika menjalankan di Android)
* Browser (jika menjalankan Flutter Web)

Cek instalasi Flutter:

```bash
flutter doctor
```

## Instalasi

Clone repository:

```bash
git clone https://github.com/bocillkompee/frontend-artikel.git
```

Masuk ke folder Flutter:

```bash
cd frontend-artikel/blog_app_ujilevel
```

Install dependencies:

```bash
flutter pub get
```

##  Konfigurasi Backend

Pastikan backend Blog App sudah berjalan.

Contoh alamat backend:

```text
http://localhost:3000
```

Sesuaikan `baseUrl` pada service Flutter dengan alamat backend yang digunakan.

Contoh:

```dart
const String baseUrl = 'http://localhost:3000';
```

> Jika menggunakan emulator Android, `localhost` biasanya perlu disesuaikan dengan alamat host komputer.

##  Menjalankan Aplikasi

Untuk menjalankan di Chrome:

```bash
flutter run -d chrome
```

Untuk menjalankan pada device Android:

```bash
flutter run
```

##  Alur Aplikasi

```text
Flutter Frontend
       │
       │ HTTP Request
       ▼
Blog App REST API
       │
       ▼
MySQL Database
       │
       └── Cloudinary
             │
             └── Penyimpanan gambar
```

##  Integrasi API

Frontend menggunakan HTTP request untuk berkomunikasi dengan backend.

Contoh operasi:

| Operasi        | Method    | Endpoint          |
| -------------- | --------- | ----------------- |
| Ambil artikel  | GET       | `/api/posts`      |
| Detail artikel | GET       | `/api/posts/:id`  |
| Tambah artikel | POST      | `/api/posts`      |
| Edit artikel   | PUT/PATCH | `/api/posts/:id`  |
| Hapus artikel  | DELETE    | `/api/posts/:id`  |
| Ambil kategori | GET       | `/api/categories` |

##  Upload Gambar

Pada form artikel, user dapat memilih gambar menggunakan package `image_picker`.

Gambar kemudian dikirim ke backend menggunakan **multipart/form-data** dan diproses oleh backend untuk disimpan di Cloudinary.

##  Platform

Project dapat dijalankan pada:

*  Flutter Web
*  Android

##  Status Project

Project ini dibuat sebagai bagian dari **Uji Level** dan dikembangkan menggunakan metode **Agile**.

##  Developer

**Bocillkompee**

GitHub:
https://github.com/bocillkompee
