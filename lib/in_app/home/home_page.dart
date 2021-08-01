import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:merge/in_app/home/cart.dart';
import 'package:merge/in_app/home/category.dart';
import 'package:merge/in_app/home/rekomendasi.dart';
import 'package:merge/in_app/home/terlaris.dart';
import 'package:merge/in_app/home/category_klik.dart';
import 'package:merge/in_app/home/detail.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          width: 1600.0,
          height: 200.0,
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(
                    item,
                    fit: BoxFit.fill,
                    width: 1600.0,
                    height: 200.0,
                  ),
                  Positioned(
                    top: 0.0,
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(100, 0, 0, 1),
                            Color.fromARGB(100, 0, 0, 1)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Produk Terbaru!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontFamily: "Poppins SemiBold",
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Kemeja Pria",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontFamily: "Poppins Regular",
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 1,
                            endIndent: 130,
                          ),
                          Text(
                            "BELI SEKARANG",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontFamily: "Poppins SemiBold",
                              // fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ))
    .toList();

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        // setState(() {
        //   counter++;
        // });
        //   },
        //   child: Icon(Icons.add),
        // ),
        body: SingleChildScrollView(
          child: Column(
            // primary: true,
            children: <Widget>[
              Container(
                // height: 1000,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 40, bottom: 15),
                  child: Column(
                    // padding: EdgeInsets.only(top: 40),
                    // primary: true,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Tia Nurmala",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: "Poppins SemiBold",
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "10000 Poin",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: "Poppins Regular",
                                  ),
                                )
                              ],
                            ),
                            Stack(
                              children: <Widget>[
                                IconButton(
                                    icon: Icon(
                                      Icons.shopping_cart,
                                      size: 24,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        counter = 0;
                                      });
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  KeranjangPage()));
                                    }),
                                counter != 0
                                    ? new Positioned(
                                        right: 9,
                                        top: 8,
                                        child: new Container(
                                          padding: EdgeInsets.all(2),
                                          decoration: new BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          constraints: BoxConstraints(
                                            minWidth: 15.5,
                                            minHeight: 15.5,
                                          ),
                                          child: Text(
                                            '$counter',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    : new Container()
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: imgList.map((url) {
                              int index = imgList.indexOf(url);
                              return Container(
                                width: 9.0,
                                height: 9.0,
                                margin: EdgeInsets.symmetric(
                                    vertical: 7.0, horizontal: 2.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current == index
                                      ? Colors.white
                                      : Colors.white24,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        CarouselSlider(
                          items: imageSliders,
                          options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              aspectRatio: 2.5,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              }),
                        ),
                      ]),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 27, vertical: 10),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Kategori(
                                  imgkat: 'assets/images/clothes.png',
                                  kat: "Pakaian",
                                ),
                                Kategori(
                                  imgkat: 'assets/images/glasses.png',
                                  kat: "Perhiasan",
                                ),
                                Kategori(
                                  imgkat: 'assets/images/makeup.png',
                                  kat: "MakeUp",
                                ),
                                Kategori(
                                  imgkat: 'assets/images/elektronik.png',
                                  kat: "Elektronik",
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Kategori(
                                  imgkat: 'assets/images/kesehatan.png',
                                  kat: "Kesehatan",
                                ),
                                Kategori(
                                  imgkat: 'assets/images/otomotif.png',
                                  kat: "Otomotif",
                                ),
                                Kategori(
                                  imgkat: 'assets/images/shoes.png',
                                  kat: "Olahraga",
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                KategoriPage()));
                                  },
                                  child: SizedBox(
                                    width: 84,
                                    height: 82,
                                    child: Card(
                                      color: Colors.white,
                                      elevation: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          children: <Widget>[
                                            Image(
                                              image: AssetImage(
                                                  'assets/images/more.png'),
                                              width: 35,
                                              height: 35,
                                              color: Color(0xffe3724b),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Lainnya",
                                              style: TextStyle(
                                                fontSize: 11,
                                                fontFamily: "Poppins Regular",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProdukTerlaris()));
                        },
                        title: Text("Produk Terlaris",
                            style: TextStyle(
                                fontFamily: "Poppins SemiBold", fontSize: 16)),
                        trailing: Icon(Icons.arrow_forward_ios,
                            color: Colors.black, size: 15),
                      ),
                      Container(
                        height: 200,
                        child: ListView(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Terlaris(
                              img: 'assets/images/kemeja-tie-die.jpg',
                              nama: "Kemeja Tie Die",
                              harga: '25000',
                            ),
                            Terlaris(
                              img: 'assets/images/celana-pendek.jpg',
                              nama: "Celana Pendek Pria",
                              harga: '20000',
                            ),
                            Terlaris(
                              img: 'assets/images/sepatu.jpg',
                              nama: "Sepatu Sneakers",
                              harga: '50000',
                            ),
                            Terlaris(
                              img: 'assets/images/kemeja-polos.jpg',
                              nama: "Kemeja Polos",
                              harga: '15000',
                            ),
                            Terlaris(
                              img: 'assets/images/kacamata.jpg',
                              nama: "Kacamata Kekinian",
                              harga: '17000',
                            ),
                            Terlaris(
                              img: 'assets/images/makeup.jpg',
                              nama: "Lipstik Bunda Viral",
                              harga: '65000',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        // contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RekomendasiPage()));
                        },
                        title: Text("Rekomendasi",
                            style: TextStyle(
                                fontFamily: "Poppins SemiBold", fontSize: 16)),
                        trailing: Icon(Icons.arrow_forward_ios,
                            color: Colors.black, size: 15),
                      ),
                      Container(
                        height: 200,
                        child: ListView(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Rekomendasi(
                              img: 'assets/images/sepatu2.jpg',
                              nama: "Sepatu Kekinian",
                              harga: '100000',
                            ),
                            Rekomendasi(
                              img: 'assets/images/celana-jogger.jpg',
                              nama: "Celana Aliando",
                              harga: '65000',
                            ),
                            Rekomendasi(
                              img: 'assets/images/topi.jpg',
                              nama: "Topi Korea Viral",
                              harga: '28000',
                            ),
                            Rekomendasi(
                              img: 'assets/images/kemeja-polos.jpg',
                              nama: "Kemeja Polos",
                              harga: '15000',
                            ),
                            Rekomendasi(
                              img: 'assets/images/kemeja-polos2.jpg',
                              nama: "Kemeja Kerja Pria",
                              harga: '30000',
                            ),
                            Rekomendasi(
                              img: 'assets/images/kacamata2.jpg',
                              nama: "Kacamata Syahrini",
                              harga: '50000',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Kategori extends StatelessWidget {
  Kategori({this.imgkat, this.kat});
  final String imgkat;
  final String kat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => KategoriKlik()));
      },
      child: SizedBox(
        width: 84,
        height: 82,
        child: Card(
          color: Colors.white,
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage(imgkat),
                  width: 35,
                  height: 35,
                  color: Color(0xffe3724b),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  kat,
                  style: TextStyle(
                    fontSize: 11,
                    fontFamily: "Poppins Regular",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Terlaris extends StatelessWidget {
  Terlaris({this.img, this.nama, this.harga});
  final String img;
  final String nama;
  final String harga;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Details()));
      },
      child: SizedBox(
        width: 140,
        height: 110,
        child: Card(
          color: Colors.white,
          elevation: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  nama,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Poppins SemiBold",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  harga + " Poin",
                  style: TextStyle(
                    fontSize: 11,
                    fontFamily: "Poppins Regular",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Rekomendasi extends StatelessWidget {
  Rekomendasi({this.img, this.nama, this.harga});
  final String img;
  final String nama;
  final String harga;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Details()));
      },
      child: SizedBox(
        width: 140,
        height: 110,
        child: Card(
          color: Colors.white,
          elevation: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  nama,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Poppins SemiBold",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  harga + " Poin",
                  style: TextStyle(
                    fontSize: 11,
                    fontFamily: "Poppins Regular",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
