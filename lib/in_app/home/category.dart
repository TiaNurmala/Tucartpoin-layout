import 'package:flutter/material.dart';
import 'package:merge/in_app/home/category_klik.dart';

class KategoriPage extends StatefulWidget {
  @override
  _KategoriPageState createState() => _KategoriPageState();
}

class _KategoriPageState extends State<KategoriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 4,
          title: Text(
            "Kategori",
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
            },
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
        children: <Widget>[
          KategoriView(
            img: 'assets/images/glasses.png',
            kat: "Aksesoris dan Perhiasan",
          ),
          KategoriView(
            img: 'assets/images/clothes.png',
            kat: "Pakaian",
          ),
          KategoriView(
            img: 'assets/images/makeup.png',
            kat: "Produk Kecantikan",
          ),
          KategoriView(
            img: 'assets/images/elektronik.png',
            kat: "Elektronik",
          ),
          KategoriView(
            img: 'assets/images/kesehatan.png',
            kat: "Kesehatan",
          ),
          KategoriView(
            img: 'assets/images/otomotif.png',
            kat: "Otomotif",
          ),
          KategoriView(
            img: 'assets/images/shoes.png',
            kat: " Peralatan Olahraga",
          ),
          KategoriView(
            img: 'assets/images/tas.png',
            kat: "Tas Pria dan Wanita",
          ),
          KategoriView(
            img: 'assets/images/radio.png',
            kat: "Hobi dan Koleksi",
          ),
          KategoriView(
            img: 'assets/images/mainan.png',
            kat: "Mainan Anak",
          ),
          KategoriView(
            img: 'assets/images/kamera.png',
            kat: "Fotografi dan Desain",
          ),
          KategoriView(
            img: 'assets/images/alat_tulis.png',
            kat: "Perlengkapan Alat Tulis",
          ),
          KategoriView(
            img: 'assets/images/dapur.png',
            kat: "Perlengkapan Rumah Tangga",
          ),
          KategoriView(
            img: 'assets/images/more.png',
            kat: "Lain-lain",
          ),
        ],
      ),
    );
  }
}

class KategoriView extends StatelessWidget {
  KategoriView({this.img, this.kat});
  final String img;
  final String kat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => KategoriKlik()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(img),
                  color: Color(0xffe3724b),
                  width: MediaQuery.of(context).size.width / 5.5,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      kat,
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Poppins SemiBold",
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
