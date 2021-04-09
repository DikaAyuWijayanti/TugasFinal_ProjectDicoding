import 'package:flutter/material.dart';
import 'package:praktikum_7/Service/http_service.dart';

class MovieList extends StatefulWidget{
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  int moviesCount;
  List movies;
  HttpService service;

  Future initialize() async{
    movies = [];
    movies = await service.getPopularMovies();
    setState((){
      moviesCount = movies.length;
      movies = movies;
    });
  }
  
  @override
  void initState(){
    service = HttpService();
    initialize();
    super.initState();
  }
  Widget build(BuildContext context){
    service.getPopularMovies().then((value) =>{
      setState((){
        result = value;
      })
    });
    return Scaffold(
      appBar: AppBar(title: Text("Popular Movies"),
      ),
      body: Container(
      child: Text(result),
      ),
    );
  }
}