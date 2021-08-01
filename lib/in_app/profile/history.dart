import 'package:flutter/material.dart';
import 'package:merge/in_app/home/detail.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
        title: Text("Riwayat Pembelian",
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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
        children: <Widget>[
          HistoryView(
            img: 'assets/images/kemeja-tie-die.jpg',
            nama: "Kemeja Tie Die",
            harga: '25000',
            status: "Paket telah diterima",
            tanggal: '07/06/2021',
          ),
          HistoryView(
            img: 'assets/images/celana-pendek.jpg',
            nama: "Celana Pendek Pria",
            harga: '20000',
            status: "Paket telah diterima",
            tanggal: '04/11/2021',
          ),
        ],
      ),
    );
  }
}

class HistoryView extends StatelessWidget {
  HistoryView({this.img, this.nama, this.harga, this.status, this.tanggal});
  final String img;
  final String nama;
  final String harga;
  final String status;
  final String tanggal;

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
                          height: 15,
                        ),
                        Text(
                          status,
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: "Poppins SemiBold",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 8.0),
                  child: Text(
                    tanggal,
                    style: TextStyle(
                      fontSize: 11,
                      fontFamily: "Poppins Regular",
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
