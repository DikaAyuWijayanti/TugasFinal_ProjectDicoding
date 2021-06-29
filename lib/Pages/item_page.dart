import 'package:flutter/material.dart';
import 'package:praktikum_7/models/item.dart';

class ItemPage extends StatelessWidget{
  final Item tempItem; //untuk Pembacaan Data yang dikirimkan pada halamam sebelumnya

  ItemPage({Key key, this.tempItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue.shade700,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: (){
              //Navigator.pop untuk kembali ke layar sebelumnya.
              Navigator.pop(context);
            }),
            backgroundColor: Colors.cyanAccent,
            title: Text("FAMOUS MOVIES", style: TextStyle(fontSize: 20, color: Colors.black),),
            ),
            body: Container(
            alignment: Alignment.center,
            color: Colors.blue[50],
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child:
                 Text(
                     "           Movie   :  "   + tempItem.title,
                  style: TextStyle( fontSize: 14, color: Colors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
"Released :  "   + tempItem.released,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
              Text(
                     "   Harga   :  "   + tempItem.harga,
                  style: TextStyle(fontSize: 14, color: Colors.black)
                  ),
            ]),
          ),
          ),
    );
  }
}