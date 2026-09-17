import 'package:flutter/material.dart';
import '../models/post.dart';
import '../models/category.dart';

/// Data dummy sementara, sebelum backend siap.
/// Kalau backend sudah jadi, tinggal ganti isi fungsi-fungsi di bawah ini
/// dengan pemanggilan http/dio ke API teman kamu.

final List<BlogCategory> dummyCategories = [
  const BlogCategory(name: 'Teknologi', icon: Icons.memory, color: Colors.blue),
  const BlogCategory(name: 'Lifestyle', icon: Icons.coffee, color: Colors.orange),
  const BlogCategory(name: 'Pendidikan', icon: Icons.school, color: Colors.green),
  const BlogCategory(name: 'Olahraga', icon: Icons.sports_soccer, color: Colors.red),
  const BlogCategory(name: 'Travel', icon: Icons.flight_takeoff, color: Colors.purple),
];

final List<Post> dummyPosts = [
  Post(
    id: '1',
    title: 'Mengenal Flutter untuk Pemula',
    excerpt:
        'Flutter adalah framework open-source dari Google untuk membangun aplikasi mobile, web, dan desktop dari satu codebase.',
    content:
        'Flutter adalah framework open-source dari Google untuk membangun aplikasi mobile, web, dan desktop dari satu codebase.\n\n'
        'Dengan Flutter, kamu bisa menulis kode sekali dan menjalankannya di Android, iOS, web, bahkan desktop. '
        'Bahasa yang digunakan adalah Dart, yang mudah dipelajari terutama untuk yang sudah familiar dengan Java, JavaScript, atau Kotlin.\n\n'
        'Kelebihan utama Flutter adalah hot reload yang membuat proses development jadi jauh lebih cepat, serta widget-widget bawaan yang sangat lengkap.',
    category: 'Teknologi',
    author: 'Naufal Fazil',
    imageUrl: 'https://picsum.photos/seed/flutter/800/500',
    date: DateTime.now().subtract(const Duration(days: 1)),
  ),
  Post(
    id: '2',
    title: 'Tips Produktif Kerja dari Rumah',
    excerpt:
        'Bekerja dari rumah punya tantangan tersendiri. Berikut beberapa tips agar tetap produktif setiap hari.',
    content:
        'Bekerja dari rumah punya tantangan tersendiri. Berikut beberapa tips agar tetap produktif setiap hari.\n\n'
        '1. Buat jadwal kerja yang jelas.\n'
        '2. Siapkan ruang kerja khusus.\n'
        '3. Hindari distraksi dari gawai.\n'
        '4. Istirahat secara teratur.\n\n'
        'Dengan menerapkan kebiasaan ini, kamu bisa tetap fokus meskipun bekerja dari rumah.',
    category: 'Lifestyle',
    author: 'Naufal Fazil',
    imageUrl: 'https://picsum.photos/seed/wfh/800/500',
    date: DateTime.now().subtract(const Duration(days: 2)),
  ),
  Post(
    id: '3',
    title: 'Belajar Efektif Menjelang Ujian',
    excerpt:
        'Menjelang ujian sering kali bikin panik. Simak cara belajar efektif agar materi lebih cepat dikuasai.',
    content:
        'Menjelang ujian sering kali bikin panik. Simak cara belajar efektif agar materi lebih cepat dikuasai.\n\n'
        'Teknik pomodoro, membuat rangkuman sendiri, dan belajar kelompok terbukti membantu banyak pelajar. '
        'Jangan lupa juga untuk cukup tidur agar otak bisa menyerap informasi dengan baik.',
    category: 'Pendidikan',
    author: 'Naufal Fazil',
    imageUrl: 'https://picsum.photos/seed/study/800/500',
    date: DateTime.now().subtract(const Duration(days: 3)),
  ),
  Post(
    id: '4',
    title: 'Rutin Olahraga di Sela Kesibukan',
    excerpt:
        'Sibuk bukan alasan untuk tidak olahraga. Berikut cara menyisipkan olahraga ringan di tengah kesibukan.',
    content:
        'Sibuk bukan alasan untuk tidak olahraga. Berikut cara menyisipkan olahraga ringan di tengah kesibukan.\n\n'
        'Cukup 15-20 menit sehari dengan jalan cepat, stretching, atau naik turun tangga sudah cukup untuk menjaga kebugaran tubuh.',
    category: 'Olahraga',
    author: 'Naufal Fazil',
    imageUrl: 'https://picsum.photos/seed/sport/800/500',
    date: DateTime.now().subtract(const Duration(days: 4)),
  ),
  Post(
    id: '5',
    title: 'Destinasi Wisata Tersembunyi di Jawa Barat',
    excerpt:
        'Jawa Barat punya banyak destinasi wisata tersembunyi yang belum banyak diketahui wisatawan.',
    content:
        'Jawa Barat punya banyak destinasi wisata tersembunyi yang belum banyak diketahui wisatawan.\n\n'
        'Mulai dari air terjun di pelosok desa hingga bukit dengan pemandangan sunrise yang memukau, semuanya layak untuk dikunjungi akhir pekan ini.',
    category: 'Travel',
    author: 'Naufal Fazil',
    imageUrl: 'https://picsum.photos/seed/travel/800/500',
    date: DateTime.now().subtract(const Duration(days: 5)),
  ),
];
