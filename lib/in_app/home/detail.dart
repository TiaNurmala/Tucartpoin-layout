import 'package:flutter/material.dart';
import 'package:merge/in_app/home/cart.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/celana-jogger.jpg',
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 20,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Celana Jogger",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: "Poppins SemiBold",
                              )),
                          Text("100000 Poin",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Poppins Regular",
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Warna",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: "Poppins Medium",
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Warna(
                            warna: "Merah",
                          ),
                          Warna(
                            warna: "Hitam",
                          ),
                          Warna(
                            warna: "Biru",
                          ),
                          Warna(
                            warna: "Ungu",
                          ),
                          Warna(
                            warna: "Kuning",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Ukuran",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: "Poppins Medium",
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Ukuran(
                            ukuran: "XXL",
                          ),
                          Ukuran(
                            ukuran: "XL",
                          ),
                          Ukuran(
                            ukuran: "L",
                          ),
                          Ukuran(
                            ukuran: "M",
                          ),
                          Ukuran(
                            ukuran: "S",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Detail Produk",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: "Poppins Medium",
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: "Poppins Regular",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 45.0),
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: RaisedButton(
                      color: new Color(0xffe3724b),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KeranjangPage()));
                      },
                      child: Text(
                        "Tambah Keranjang",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontFamily: "Poppins Regular",
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Ukuran extends StatelessWidget {
  Ukuran({this.ukuran});
  final String ukuran;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 6,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: OutlineButton(
          color: Colors.white,
          padding: EdgeInsets.all(0),
          onPressed: () {},
          child: Text(
            ukuran,
            style: TextStyle(fontSize: 13),
          ),
        ),
      ),
    );
  }
}

class Warna extends StatelessWidget {
  Warna({this.warna});
  final String warna;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 6,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: OutlineButton(
          color: Colors.white,
          padding: EdgeInsets.all(0),
          onPressed: () {},
          child: Text(
            warna,
            style: TextStyle(fontSize: 13),
          ),
        ),
      ),
    );
  }
}
