import 'package:flutter/material.dart';
import 'package:merge/in_app/explore/filter.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                children: <Widget>[
                  ExploreView(
                    img: 'assets/images/kemeja-tie-die.jpg',
                    nama: "Kemeja Tie Die",
                    harga: '25000',
                    desc: "Lorem ipsum dolor sit amet, con...",
                  ),
                  ExploreView(
                    img: 'assets/images/celana-pendek.jpg',
                    nama: "Celana Pendek Pria",
                    harga: '20000',
                    desc: "Lorem ipsum dolor sit amet, con...",
                  ),
                  ExploreView(
                    img: 'assets/images/sepatu.jpg',
                    nama: "Sepatu Sneakers",
                    harga: '50000',
                    desc: "Lorem ipsum dolor sit amet, con...",
                  ),
                  ExploreView(
                    img: 'assets/images/kemeja-polos.jpg',
                    nama: "Kemeja Polos",
                    harga: '15000',
                    desc: "Lorem ipsum dolor sit amet, con...",
                  ),
                  ExploreView(
                    img: 'assets/images/kacamata.jpg',
                    nama: "Kacamata Kekinian",
                    harga: '17000',
                    desc: "Lorem ipsum dolor sit amet, con...",
                  ),
                  ExploreView(
                    img: 'assets/images/makeup.jpg',
                    nama: "Lipstik Bunda Viral",
                    harga: '65000',
                    desc: "Lorem ipsum dolor sit amet, con...",
                  ),
                  ExploreView(
                    img: 'assets/images/kemeja-tie-die.jpg',
                    nama: "Kemeja Tie Die",
                    harga: '25000',
                    desc: "Lorem ipsum dolor sit amet, con...",
                  ),
                  ExploreView(
                    img: 'assets/images/celana-pendek.jpg',
                    nama: "Celana Pendek Pria",
                    harga: '20000',
                    desc: "Lorem ipsum dolor sit amet, con...",
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                  padding: EdgeInsets.all(15),
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffe3724b),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.only(right: 0.5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5))),
                          child: InkWell(
                            child: TextFormField(
                              enabled: false,
                              decoration: InputDecoration(
                                // enabled: false,
                                border: InputBorder.none,
                                fillColor: Colors.white,

                                prefixIcon: IconButton(
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.black,
                                      size: 22,
                                    ),
                                    onPressed: () {}),
                                hintText: "Cari...",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontFamily: "Poppins Regular",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5))),
                          child: FlatButton(
                            onPressed: () { Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FilterPage(),
                          ),
                        );
                      },
                            child: RotatedBox(
                                quarterTurns: 1,
                                child: Image(
                                    image:
                                        AssetImage('assets/images/filter.png'),
                                    height: 21,
                                    width: 21)),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class ExploreView extends StatelessWidget {
  ExploreView({this.img, this.nama, this.harga, this.desc});
  final String img;
  final String nama;
  final String harga;
  final String desc;

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
                      height: 5,
                    ),
                    Text(
                      harga + " Poin",
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: "Poppins Regular",
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      desc,
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: "Poppins Regular",
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
