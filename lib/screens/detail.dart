import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final String content;
  final String image;
  final String author;  // Menambahkan parameter author

  // Konstruktor untuk menerima data dari ListScreen
  DetailScreen({
    required this.title,
    required this.content,
    required this.image,
    required this.author,  // Menambahkan author di konstruktor
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(  // Membungkus seluruh konten agar bisa di scroll ke bawah
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Menampilkan judul berita
              Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),

              // Menambahkan teks "by author" sebelum gambar
              Text(
                'by $author',  // Menampilkan nama penulis
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 16),

              // Menambahkan gambar terkait berita
              Image.asset(
                image,  // Menggunakan gambar yang diterima dari ListScreen
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),  // Memberikan jarak setelah gambar

              // Menampilkan konten lengkap dari berita
              Text(
                content,  // Menggunakan data yang diterima dari ListScreen
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),  // Menambahkan jarak antar elemen

              // Menambahkan tombol suka dan komentar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(icon: Icon(Icons.thumb_up), onPressed: () {}),
                  IconButton(icon: Icon(Icons.comment), onPressed: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
