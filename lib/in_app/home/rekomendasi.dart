import 'package:flutter/material.dart';
import 'package:merge/in_app/home/detail.dart';

class RekomendasiPage extends StatefulWidget {
  @override
  _RekomendasiPageState createState() => _RekomendasiPageState();
}

class _RekomendasiPageState extends State<RekomendasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
        title: Text(
          "Rekomendasi",
          style: TextStyle(
            fontFamily: "Poppins SemiBold",
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
        children: <Widget>[
          RekomendasiView(
            img: 'assets/images/sepatu2.jpg',
            nama: "Sepatu Kekinian",
            harga: '100000',
            desc: "Lorem ipsum dolor sit amet, con...",
          ),
          RekomendasiView(
            img: 'assets/images/celana-jogger.jpg',
            nama: "Celana Aliando",
            harga: '65000',
            desc: "Lorem ipsum dolor sit amet, con...",
          ),
          RekomendasiView(
            img: 'assets/images/topi.jpg',
            nama: "Topi Korea Viral",
            harga: '28000',
            desc: "Lorem ipsum dolor sit amet, con...",
          ),
          RekomendasiView(
            img: 'assets/images/kemeja-polos.jpg',
            nama: "Kemeja Polos",
            harga: '15000',
            desc: "Lorem ipsum dolor sit amet, con...",
          ),
          RekomendasiView(
            img: 'assets/images/kemeja-polos2.jpg',
            nama: "Kemeja Kerja Pria",
            harga: '30000',
            desc: "Lorem ipsum dolor sit amet, con...",
          ),
          RekomendasiView(
            img: 'assets/images/kacamata2.jpg',
            nama: "Kacamata Syahrini",
            harga: '50000',
            desc: "Lorem ipsum dolor sit amet, con...",
          ),
        ],
      ),
    );
  }
}

class RekomendasiView extends StatelessWidget {
  RekomendasiView({this.img, this.nama, this.harga, this.desc});
  final String img;
  final String nama;
  final String harga;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Details()));
      },
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
