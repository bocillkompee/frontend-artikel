import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import '../models/article.dart';

class ArticleService {
  static const String baseUrl = "http://localhost:3000";

  // ===== GET ALL ARTICLES =====
  Future<List<Article>> getAllArticles() async {
    final response = await http.get(Uri.parse("$baseUrl/api/posts"));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final List data = body['data'];
      return data.map((json) => Article.fromJson(json)).toList();
    } else {
      throw Exception("Gagal mengambil data artikel");
    }
  }

  // ===== GET ARTICLE DETAIL =====
  Future<Article> getArticleById(int id) async {
    final response = await http.get(Uri.parse("$baseUrl/api/posts/$id"));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return Article.fromJson(body['data']);
    } else if (response.statusCode == 404) {
      throw Exception("Artikel tidak ditemukan");
    } else {
      throw Exception("Gagal mengambil detail artikel");
    }
  }

  // ===== CREATE ARTICLE =====
  Future<void> createArticle({
  required int categoryId,
  required String title,
  required String content,
  XFile? imageFile,
}) async {
  var request = http.MultipartRequest(
    'POST',
    Uri.parse("$baseUrl/api/posts"),
  );

  request.fields['categoryId'] = categoryId.toString();
  request.fields['title'] = title;
  request.fields['content'] = content;

  if (imageFile != null) {
    final bytes = await imageFile.readAsBytes();

    request.files.add(
      http.MultipartFile.fromBytes(
        'image',
        bytes,
        filename: imageFile.name,
      ),
    );
  }

  final streamedResponse = await request.send();
  final response = await http.Response.fromStream(streamedResponse);

  if (response.statusCode != 201) {
    final body = jsonDecode(response.body);
    throw Exception(body['message'] ?? "Gagal membuat artikel");
  }
}
  // ===== UPDATE ARTICLE =====
  Future<void> updateArticle({
    required int id,
    required int categoryId,
    required String title,
    required String content,
    XFile? imageFile,
  }) async {
    var request = http.MultipartRequest(
      'PUT',
      Uri.parse("$baseUrl/api/posts/$id"),
    );

    request.fields['categoryId'] = categoryId.toString();
    request.fields['title'] = title;
    request.fields['content'] = content;

    if (imageFile != null) {
      request.files.add(
        await http.MultipartFile.fromPath('image', imageFile.path),
      );
    }

    final streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);

    if (response.statusCode != 200) {
      final body = jsonDecode(response.body);
      throw Exception(body['message'] ?? "Gagal update artikel");
    }
  }

  // ===== DELETE ARTICLE =====
  Future<void> deleteArticle(int id) async {
    final response = await http.delete(Uri.parse("$baseUrl/api/posts/$id"));

    if (response.statusCode != 200) {
      throw Exception("Gagal menghapus artikel");
    }
  }

  // ===== GET CATEGORIES (buat dropdown pilih kategori) =====
  Future<List<Category>> getCategories() async {
    final response = await http.get(Uri.parse("$baseUrl/api/categories"));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final List data = body['data'];
      return data.map((json) => Category.fromJson(json)).toList();
    } else {
      throw Exception("Gagal mengambil kategori");
    }
  }
}