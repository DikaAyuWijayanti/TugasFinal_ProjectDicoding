import 'package:flutter/material.dart';
import 'package:praktikum_7/models/movie.dart';

// untuk menampilkan gambar secara fullscreen
class ImageFullScreen extends StatelessWidget {
  final Movie movie;
  final String imgPath = 'https://image.tmdb.org/t/p/w500/';

  ImageFullScreen(this.movie);

  @override
  Widget build(BuildContext context) {
    String path;
    if (movie.posterPath != null) {
      path = imgPath + movie.posterPath;
    } else {
      path =
          'https://images.freeimages.com/images/large-previews/Seb/movie-clapboard-1184339.jpg';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: GestureDetector(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Hero( // digunakan untuk sebagai Hero Animation dimana Animasi yang digunakan untuk menampilkan transisi sebuah widget di dalam UI ketika berpindah halaman.
                      //atau menambahkan animasi pada widget ketika berpindah halaman seakan-akan widget tersebut dipindah dari satu halaman ke halaman lainnya
              tag: 'imageHero',
              child: Image.network(
                path,
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context); // untuk kembali ke halaman sebelumnya
        },
      ),
    );
  }
}