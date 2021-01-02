import 'package:flutter/material.dart';
import 'package:flutter_social_media/gonderiKarti.dart';
import 'package:flutter_social_media/profilsayfasi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.grey, size: 32.0),
            onPressed: () {}),
        title: Text(
          "Social",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications,
                  color: Colors.purple[300], size: 32.0),
              onPressed: () {
                showModalBottomSheet(context: context, builder: (BuildContext context){
                  return Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Aslı seni takip etti!", style: TextStyle(fontSize: 16.0),),
                            Text("3 dakika önce", style: TextStyle(fontSize: 16.0),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Mert bir fotoğrafını beğendi!", style: TextStyle(fontSize: 16.0),),
                            Text("1 dakika önce", style: TextStyle(fontSize: 16.0),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Hatice bir fotoğrafını beğendi!", style: TextStyle(fontSize: 16.0),),
                            Text("30 saniye önce", style: TextStyle(fontSize: 16.0),),
                          ],
                        ),
                      ),
                    ],
                  );
                });
              }),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 3.0),
                    blurRadius: 5.0)
              ],
              color: Colors.grey[100],
            ),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                profilKartiOlustur(
                  "Selçuk",
                  "https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553_960_720.jpg",
                  "Selçuk Mert",
                  "https://cdn.pixabay.com/photo/2015/03/26/09/42/woman-690118_960_720.jpg",
                ),
                profilKartiOlustur(
                  "Zara",
                  "https://cdn.pixabay.com/photo/2015/07/09/00/29/woman-837156_960_720.jpg",
                  "Zara Yıldız",
                  "https://cdn.pixabay.com/photo/2015/03/26/09/42/woman-690118_960_720.jpg",
                ),
                profilKartiOlustur(
                  "Jessica",
                  "https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814_960_720.jpg",
                  "Jessica Lopez",
                  "https://cdn.pixabay.com/photo/2015/03/26/09/42/woman-690118_960_720.jpg",
                ),
                profilKartiOlustur(
                  "Belma",
                  "https://cdn.pixabay.com/photo/2014/10/06/17/30/child-476507_960_720.jpg",
                  "Belma Zorlu",
                  "https://cdn.pixabay.com/photo/2015/03/26/09/42/woman-690118_960_720.jpg",
                ),
                profilKartiOlustur(
                  "Yıldız",
                  "https://cdn.pixabay.com/photo/2015/03/26/09/42/woman-690118_960_720.jpg",
                  "Yıldız Çakır",
                  "https://cdn.pixabay.com/photo/2015/03/26/09/42/woman-690118_960_720.jpg",
                ),
                profilKartiOlustur(
                  "Nadya",
                  "https://cdn.pixabay.com/photo/2016/11/22/21/42/adult-1850703_960_720.jpg",
                  "Nadya Olyana",
                  "https://cdn.pixabay.com/photo/2016/11/22/21/42/adult-1850703_960_720.jpg",
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2016/03/23/04/01/beautiful-1274056_960_720.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_960_720.jpg",
            isimSoyad: "Bella",
            gecenSure: "1 Ay",
            aciklama: "Harikaydı",
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2016/03/23/08/34/beautiful-1274361_960_720.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2019/05/25/11/00/dog-4228118_960_720.jpg",
            isimSoyad: "Ela",
            gecenSure: "1 Hafta",
            aciklama: "Tatlı Köpeğim",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor: Colors.purple[300],
        child: Icon(Icons.add_a_photo, color: Colors.white,),
      ),
    );
  }

  Material profilKartiOlustur(String kullaniciAdi, String resimLinki,
      String isimSoyad, String kapakResimlinki) {
    return Material(
      child: InkWell(
        onTap: () async {
          bool donenVeri = await Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ProfilSayfasi(
                    profilResimlinki: resimLinki,
                    kullaniciAdi: kullaniciAdi,
                    isimSoyad: isimSoyad,
                    kapakResimlinki: kapakResimlinki,
                  )));
          if (donenVeri) {
            print("Kullanici döndü");
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(resimLinki), fit: BoxFit.cover),
                        color: Colors.white,
                        border: Border.all(width: 2.0, color: Colors.grey),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  ),
                ],
              ),
              SizedBox(height: 5.0),
              Text(
                kullaniciAdi,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
