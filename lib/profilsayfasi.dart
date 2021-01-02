import 'package:flutter/material.dart';
import 'package:flutter_social_media/gonderiKarti.dart';

class ProfilSayfasi extends StatelessWidget {

  final String isimSoyad;
  final String kullaniciAdi;
  final String kapakResimlinki;
  final String profilResimlinki;

  const ProfilSayfasi({Key key, this.isimSoyad, this.kullaniciAdi, this.kapakResimlinki, this.profilResimlinki}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250,
                //color: Colors.yellow,
              ),
              Container(
                height: 180.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(kapakResimlinki),
                  ),
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 0.0,
                child: Hero(
                  tag: kullaniciAdi,
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              profilResimlinki),
                        ),
                        borderRadius: BorderRadius.circular(60.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  ),
                ),
              ),
              Positioned(
                top: 190.0,
                left: 145.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      isimSoyad,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      kullaniciAdi,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 90.0,
                right: 15.0,
                child: Container(
                  width: 100.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[200],
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.add_circle, size: 18.0),
                      SizedBox(width: 5.0),
                      Text(
                        "Takip Et",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            height: 75.0,
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                sayac(baslik: "Takipçi",sayi: "20K",),
                sayac(baslik: "Takipçi",sayi: "15K",),
                sayac(baslik: "Paylaşım",sayi: "200K",),
              ],
            ),
          ),
          GonderiKarti(
            profilResimLinki:
            "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
            gonderiResimLinki:
            "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_960_720.jpg",
            isimSoyad: "Bella",
            gecenSure: "1 Ay",
            aciklama: "Harikaydı",
          ),
        ],
      ),
    );
  }
}

class sayac extends StatelessWidget {
  final String baslik;
  final String sayi;

  const sayac({Key key, this.baslik, this.sayi}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          sayi,
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          height: 1.0,
        ),
        Text(
          baslik,
          style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600]),
        ),
      ],
    );
  }
}
