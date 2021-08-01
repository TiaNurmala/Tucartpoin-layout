import 'package:flutter/material.dart';

class KeranjangPage extends StatefulWidget {
// KeranjangPage({this.total});
// final int total;

  @override
  _KeranjangPageState createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  // var total;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
        title: Text("Keranjang",
            style: TextStyle(
                fontFamily: "Poppins SemiBold",
                fontSize: 16,
                color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            padding: EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 75),
            children: <Widget>[
              Container(
                alignment: Alignment.topRight,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Hapus Semua",
                    style: TextStyle(
                      color: Colors.red,
                      fontFamily: "Poppins SemiBold",
                    ),
                  ),
                ),
              ),
              KeranjangView(
                img: 'assets/images/sepatu2.jpg',
                nama: "Sepatu Kekinian",
                harga: '100000',
                // desc: "Lorem ipsum dolor sit amet, con...",
              ),
              KeranjangView(
                img: 'assets/images/celana-jogger.jpg',
                nama: "Celana Aliando",
                harga: '65000',
                // desc: "Lorem ipsum dolor sit amet, con...",
              ),
              KeranjangView(
                img: 'assets/images/topi.jpg',
                nama: "Topi Korea Viral",
                harga: '28000',
                // desc: "Lorem ipsum dolor sit amet, con...",
              ),
              KeranjangView(
                img: 'assets/images/kemeja-polos.jpg',
                nama: "Kemeja Polos",
                harga: '15000',
                // desc: "Lorem ipsum dolor sit amet, con...",
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(15),
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0.5,
                    blurRadius: 3,
                    offset: Offset(0.5, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Total Harga",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins Bold",
                              fontSize: 11)),
                      SizedBox(
                        height: 3,
                      ),
                      Text("100000 Poin",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: "Poppins Regular",
                          )),
                    ],
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    onPressed: () {},
                    color: Color(0xffe3724b),
                    child: Text("Pembayaran",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "Poppins Regular",
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class KeranjangView extends StatelessWidget {
  KeranjangView({
    this.img,
    this.nama,
    this.harga,
    // this.jumlah
  });
  final String img;
  final String nama;
  final String harga;
  // final String jumlah;

  int jumlah = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 110,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          color: Colors.white,
          elevation: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width / 3.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      image: DecorationImage(
                        image: AssetImage(img),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          nama,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Poppins Bold",
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          harga + " Poin",
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: "Poppins Regular",
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0.5,
                                    blurRadius: 0.5,
                                    offset: Offset(
                                        0, 0.5), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: IconButton(
                                padding: EdgeInsets.all(0),
                                onPressed: () {
                                  // setState(() {
                                  //   jumlah--;
                                  // });
                                },
                                icon: Icon(Icons.remove,
                                    size: 14, color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                "1",
                                // '$jumlah',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Poppins Regular",
                                ),
                              ),
                            ),
                            Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0.5,
                                    blurRadius: 0.5,
                                    offset: Offset(
                                        0, 0.5), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: IconButton(
                                padding: EdgeInsets.all(0),
                                // color: Colors.white,
                                onPressed: () {
                                  // setState(() {
                                  //   jumlah++;
                                  // });
                                },
                                icon: Icon(Icons.add,
                                    size: 14, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  // color: Colors.white,
                  onPressed: () {},
                  icon: Icon(Icons.delete_outline,
                      size: 25, color: Color(0xffe3724b)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void setState(Null Function() param0) {}
}
