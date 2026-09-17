class Post {
  final String id;
  final String title;
  final String excerpt;
  final String content;
  final String category;
  final String author;
  final String imageUrl;
  final DateTime date;

  const Post({
    required this.id,
    required this.title,
    required this.excerpt,
    required this.content,
    required this.category,
    required this.author,
    required this.imageUrl,
    required this.date,
  });

  // Dipakai nanti kalau sudah connect ke backend (contoh: response JSON dari API)
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'].toString(),
      title: json['title'] ?? '',
      excerpt: json['excerpt'] ?? '',
      content: json['content'] ?? '',
      category: json['category'] ?? 'Umum',
      author: json['author'] ?? 'Anonim',
      imageUrl: json['image_url'] ?? '',
      date: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'excerpt': excerpt,
      'content': content,
      'category': category,
      'author': author,
      'image_url': imageUrl,
      'created_at': date.toIso8601String(),
    };
  }
}
