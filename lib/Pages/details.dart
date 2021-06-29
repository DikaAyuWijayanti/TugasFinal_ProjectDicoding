import 'package:flutter/material.dart';
import 'package:praktikum_7/Pages/item_page.dart';
import 'package:praktikum_7/models/item.dart';

class Details extends StatelessWidget {
  
  final List<Item> items = [
    Item(
    title   : ' Godzila  Vs.Kong',
    released: ' 2001',
    harga   : ' Rp 30000',
    image   : 'https://cdn0-production-images-kly.akamaized.net/sQw5tZ3b62ctXfIlfBCPuWDWaqs=/640x853/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3357282/original/011806600_1611383440-EsRUFLjU0AEggnI-700x1037.jpeg',
  ),
    Item(
    title    : ' Raya and the Last Dragon',
    released : ' 2002',
    harga    : ' Rp 40000',
    image    : 'https://lumiere-a.akamaihd.net/v1/images/p_rayaandthelastdragon_21294_83346778.jpeg',
    ),
    Item(
      title   : ' ENDANGERED',
      released: ' 2003',
      harga   : ' Rp 45000',
      image   : 'https://boomcrib.com/wp-content/uploads/2021/05/Endangered-Species-Movie.jpg',
    ),
   Item(
      title    : ' Nobody',
      released : ' 2004',
      harga    : ' Rp 50000',
      image    : 'https://i.ytimg.com/vi/hIkdya64RAU/movieposter_en.jpg',
    ),
    Item (
      title    : ' Virtuoso',
      released : ' 2005',
      harga    : ' Rp 55000',
      image    : 'https://boomcrib.com/wp-content/uploads/2021/04/The-Virtuoso-Movie.jpg',
    ),
   Item(
      title    : ' Without Remorse',
      released : ' 2006',
      harga    : ' Rp 60000',
      image    : 'https://pics.filmaffinity.com/Secret_Magic_Control_Agency-728262318-mmed.jpg',
    ),
    Item(
      title    : ' Monster Pets',
      released : ' 2007',
      harga    : ' Rp 65000',
      image    : 'https://m.media-amazon.com/images/M/MV5BZjJjOTc4MDMtYWQ0My00ZTNjLWJiMDgtN2M5NDc1MzljMTZhXkEyXkFqcGdeQXVyMTE5MTkxMDI2._V1_FMjpg_UX1000_.jpg',
    ),
   Item(
      title    : ' The UNHOLY',
      released : ' 2008',
      harga    : ' Rp 80000',
      image    : 'https://m.media-amazon.com/images/M/MV5BYzljZGEyNjYtM2Q0NC00NWFlLWE3NDktYmZjNjg0NDFlNDc4XkEyXkFqcGdeQXVyNDU5MTU4ODU@._V1_.jpg',
    ),
    Item(
      title    : ' Miraculous',
      released : ' 2009',
      harga    : ' Rp 89000',
      image    : 'https://i.pinimg.com/originals/2c/24/3a/2c243a38adaaeafb4bbc21202e86f7a8.png',
    ),
    Item(
      title    : ' The Conjuring',
      released : ' 2010',
      harga    : ' Rp 90000',
      image    : 'https://upload.wikimedia.org/wikipedia/en/e/e8/The_Conjuring_-_The_Devil_Made_Me_Do_It.png',
    ),
    Item(
      title    : ' Cruella',
      released : ' 2011',
      harga    : ' Rp 87000',
      image    : 'https://www.eluniversal.com.mx/sites/default/files/u5273/mac_cruella.jpg',
    ),
    Item(
      title    : ' Warth Of Man',
      released : ' 2012',
      harga    : ' Rp 89000',
      image    : 'https://assets.voxcinemas.com/posters/P_HO00008382.jpg',
    ),
    Item(
      title    : ' Army Of Dead',
      released : ' 2013',
      harga    : ' Rp 75000',
      image    : 'https://m.media-amazon.com/images/M/MV5BNGY0NzgzYzctYWQwMC00MzM2LThjNGMtZjFjMWUyNzg0ZmM0XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg',
    ),
    Item(
      title    : ' Spiral',
      released : ' 2014',
      harga    : ' Rp 80000',
      image    : 'https://indiemacuser.files.wordpress.com/2020/05/354238-spiral-from-the-book-of-saw.jpg',
    ),
    Item(
      title    : ' A Quiet',
      released : ' 2015',
      harga    : ' Rp 100000',
      image    : 'https://public.urbanasia.com/images/post/2020/03/13/1584077176-INSTAGRAM-(1).jpg',
    ),
    Item(
      title    : ' I am ALL Girls',
      released : ' 2020',
      harga    : ' Rp 78000',
      image    : 'https://d2u384mreupnc8.cloudfront.net/assets/movieImages/1620585051.png',
    ),
    Item(
      title    : ' Demon Slayer',
      released : ' 2019',
      harga    : ' Rp 89000',
      image    : 'https://pict-b.sindonews.net/dyn/620/pena/news/2021/01/07/165/292628/demon-slayer-kimetsu-no-yaiba-the-movie-mugen-train-pew.jpg',
    ),
    Item(
      title    : ' Those Who Wish Me Dead',
      released : ' 2018',
      harga    : ' Rp 58000',
      image    : 'https://upload.wikimedia.org/wikipedia/en/3/3d/Those_Who_Wish_Me_Dead.png',
    ),
  ];

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: '',
      theme: ThemeData(primaryColor: Colors.lightGreen,
      accentColor: Colors.lightGreen,
      canvasColor: Color.fromRGBO(230, 231, 232, 1),
      textTheme: ThemeData.light().textTheme.copyWith(
        title: TextStyle(fontWeight:  FontWeight.bold, fontSize:20),
        subhead: TextStyle(fontWeight: FontWeight.bold),
      ),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: (){
              //Navigator.pop untuk kembali ke layar sebelumnya.
              Navigator.pop(context);
            }),
          backgroundColor: Colors.cyanAccent,
          title: Text(
            "FAMOUS MOVIES"
            ),
        ),
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index){
            final item = items[index];
            return InkWell( //  InkWell merupakan material widget yang memberikan efek ketika ditekan.
              onTap: () { 
                Navigator.push(  //Navigator.push untuk navigasi ke layar baru 
                  context, 
                  MaterialPageRoute(
                    builder: (context)=> ItemPage(tempItem: item),
                    settings: RouteSettings(arguments: Item), //Untuk melakukan pengiriman data ke halaman berikutnya
                ));
              },
                          child: Card(
                child : Container(
                  margin : EdgeInsets.all(8),
                  color: Colors.limeAccent,
                  child: Row(
                    children: [
                      Expanded(child : Image.network(item.image)),// menampilkan menu/list gambar
                      Expanded(child: Text(item.title)),// menampilkan menu/ list product - productnya
                      Expanded(child: Text(item.released)),// menampilkan menu/ list genre/ jenis- jenisnya
                      Expanded(child: Text(item.harga)),
                    ]
                    ),
                ),
              ),
            );
            }, 
            ),

        ),
      ),
    );
  }

}