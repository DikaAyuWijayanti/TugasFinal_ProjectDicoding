import 'package:flutter/material.dart';
import 'package:praktikum_7/Pages/movie_detail.dart';
import 'package:praktikum_7/Service/http_service.dart';

class MovieList extends StatefulWidget{
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  int moviesCount;
  List movies;
  HttpService service;

  //path untuk mengambil gambar
  String imgPath = 'https://image.tmdb.org/t/p/w500/';

  Future initialize() async{
    movies = [];
    movies = await service.getPopularMovies();
    setState((){
      moviesCount = movies.length;
      movies = movies;
    });
  }
  //tambahkan method override init state agar permintaan ke rest api dapat dilakukan ketika state di inisialisasi
  @override
  void initState(){
    service = HttpService();
    initialize();
    super.initState();
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Movies"),
      ),
      body: ListView.builder(
        itemCount: (this.moviesCount == null) ? 0 : this.moviesCount,
        itemBuilder: (
          context, int position){
          return Card(
            color: Colors.white,
          elevation: 2.0,
          child: 
          ListTile(
            leading: Image.network(imgPath+movies[position].posterPath),
            title: Text(movies[position].title),
          subtitle: Text('Rating = ' + movies[position].voteAverage.toString(),
          ),
          onTap: (){ //Untuk membuat perpindahan dari movie list ke movie detail
            MaterialPageRoute route = 
            MaterialPageRoute(
              builder: (_) => MovieDetail(movies[position]),
              );
            Navigator.push(context, route);
          },
          ),
          );
        },
      ),
    );
  }
}