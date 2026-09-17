import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({super.key});

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _excerptController = TextEditingController();
  final _contentController = TextEditingController();
  String? _selectedCategory;

  @override
  void dispose() {
    _titleController.dispose();
    _excerptController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    if (_selectedCategory == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Pilih kategori dulu ya')),
      );
      return;
    }

    // TODO(backend): kirim data ini ke API teman kamu, misalnya:
    // await ApiService.createPost(
    //   title: _titleController.text,
    //   excerpt: _excerptController.text,
    //   content: _contentController.text,
    //   category: _selectedCategory!,
    // );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Artikel berhasil disimpan (dummy, belum ke server)')),
    );

    _formKey.currentState!.reset();
    _titleController.clear();
    _excerptController.clear();
    _contentController.clear();
    setState(() => _selectedCategory = null);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Tulis Artikel Baru',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                'Isi form di bawah untuk membuat artikel baru',
                style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
              ),
              const SizedBox(height: 20),

              // Placeholder upload gambar
              InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Fitur upload gambar menyusul setelah backend siap')),
                  );
                },
                borderRadius: BorderRadius.circular(16),
                child: DottedBorderBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_photo_alternate_outlined,
                          size: 36, color: Colors.grey.shade400),
                      const SizedBox(height: 8),
                      Text('Tambah gambar sampul',
                          style: TextStyle(color: Colors.grey.shade500, fontSize: 13)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18),

              _buildLabel('Judul'),
              TextFormField(
                controller: _titleController,
                decoration: _inputDecoration('Masukkan judul artikel'),
                validator: (value) =>
                    (value == null || value.trim().isEmpty) ? 'Judul wajib diisi' : null,
              ),
              const SizedBox(height: 16),

              _buildLabel('Kategori'),
              DropdownButtonFormField<String>(
                initialValue: _selectedCategory,
                decoration: _inputDecoration('Pilih kategori'),
                items: dummyCategories
                    .map((c) => DropdownMenuItem(value: c.name, child: Text(c.name)))
                    .toList(),
                onChanged: (value) => setState(() => _selectedCategory = value),
              ),
              const SizedBox(height: 16),

              _buildLabel('Ringkasan singkat'),
              TextFormField(
                controller: _excerptController,
                maxLines: 2,
                decoration: _inputDecoration('Ringkasan singkat artikel'),
                validator: (value) =>
                    (value == null || value.trim().isEmpty) ? 'Ringkasan wajib diisi' : null,
              ),
              const SizedBox(height: 16),

              _buildLabel('Isi artikel'),
              TextFormField(
                controller: _contentController,
                maxLines: 8,
                decoration: _inputDecoration('Tulis isi artikel di sini...'),
                validator: (value) =>
                    (value == null || value.trim().isEmpty) ? 'Isi artikel wajib diisi' : null,
              ),
              const SizedBox(height: 28),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _submit,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                  ),
                  child: const Text('Simpan Artikel',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) => Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: Text(text,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
      );

  InputDecoration _inputDecoration(String hint) => InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      );
}

/// Kotak placeholder sederhana untuk area upload gambar (border putus-putus manual)
class DottedBorderBox extends StatelessWidget {
  final Widget child;
  const DottedBorderBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300, width: 1.4),
      ),
      child: child,
    );
  }
}
