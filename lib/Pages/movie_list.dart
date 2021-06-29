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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        elevation: .5,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text("FAMOUS MOVIES"),
      ),
      body: GridView.builder(
          itemCount: (this.moviesCount == null) ? 0 : this.moviesCount,
          padding: const EdgeInsets.all(20),
         
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2 / 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 20.0,
          ),
          itemBuilder: (context, int position) {
            return GridTile(
              child: InkResponse(
                enableFeedback: true,
                child: Image.network(
                  imgPath + movies[position].posterPath,
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  MaterialPageRoute route = MaterialPageRoute(
                      builder: (_) => MovieDetail(movies[position]));
                  Navigator.push(context, route);
                },
              ),
            );
          }),
    );
  }
}