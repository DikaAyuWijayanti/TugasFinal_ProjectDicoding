import 'package:flutter/material.dart';
import 'package:praktikum_7/Pages/component/ImageFullScreen.dart';
import 'package:praktikum_7/models/movie.dart';

class MovieDetail extends StatelessWidget{
  // untuk menerima parameter Movies
  final Movie movie;
  final String imgPath = 'https://image.tmdb.org/t/p/w500/';

  MovieDetail(this.movie);
  
  @override
  Widget build(BuildContext context){
    String path;
    if (movie.posterPath != null){
      path = imgPath + movie.posterPath;
    }else{
      path =
            'https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg';
    }
    double height = MediaQuery.of(context).size.height;
    return Scaffold(appBar: AppBar(title: Text(movie.title),
    ),
    body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: GestureDetector( //gestureDetector widget yang digunakan untuk mendeteksi gesture pada widget seperti gesture ontap, doubletab dan lain-lain
                      child: Hero( // digunakan untuk sebagai Hero Animation dimana Animasi yang digunakan untuk menampilkan transisi sebuah widget di dalam UI ketika berpindah halaman.
                      //atau menambahkan animasi pada widget ketika berpindah halaman seakan-akan widget tersebut dipindah dari satu halaman ke halaman lainnya
                        tag: 'imageHero',
                        child: Image.network(
                          path,
                          height: 200,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) { // untuk agar berpindah menuju halaman imagefullscreen
                          return ImageFullScreen(movie);
                        }));
                      }),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          movie.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'Rating\n' + movie.voteAverage.toString(), // untuk menampilkan rating dari movie di tampilan awal
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Container(padding: EdgeInsets.only(top:20, left:20),
                          child: Text('Release\n' + movie.runtimeType.toString(), // untuk menampilkan release type
                          style: TextStyle(fontSize: 15),
                          ),
                          ),
              ],
            ),
          ],
    ),
                ),
              ],
            ),
    Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Overview Movie',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.all(16),
                ),
                Container(
                  child: Text(movie.overview, style: TextStyle(fontSize: 15)),
                  padding: EdgeInsets.only(left: 16, right: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}