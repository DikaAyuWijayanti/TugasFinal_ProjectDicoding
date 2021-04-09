import 'package:flutter/material.dart';
import 'package:praktikum_7/Service/http_service.dart';

class MovieList extends StatefulWidget{
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  String result = "";
  HttpService service;
  
  @override
  void initState(){
    service = HttpService();
    super.initState();
  }
  Widget build(BuildContext context){
    return Container();
  }
}