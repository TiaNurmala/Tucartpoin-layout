import 'package:flutter/material.dart';
import 'package:merge/in_app/profile/history.dart';
import 'package:merge/in_app/profile/tracking.dart';
// import 'package:quantum/in_app/explore/search.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF0F1),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Color(0xFFe3724b),
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Profil',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins Medium',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                // Profile Picture
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        minRadius: 30,
                        maxRadius: 30,
                        backgroundImage:
                            AssetImage('assets/images/profile1.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Joe Tahir',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins Medium',
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'joe@gmail.com',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins Regular',
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            ButtonTheme(
              minWidth: double.infinity,
              height: 70,
              child: MaterialButton(
                 onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HistoryPage(),
                      ),
                    );
                  },
                color: Colors.white,
                elevation: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Riwayat Pembelian',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins Medium',
                        fontSize: 16,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: ButtonTheme(
                minWidth: double.infinity,
                height: 70,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TrackingPage(),
                      ),
                    );
                  },
                  color: Colors.white,
                  elevation: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Informasi Pengiriman',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins Medium',
                          fontSize: 16,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ButtonTheme(
                minWidth: double.infinity,
                height: 70,
                child: MaterialButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => SearchClick(),
                    //   ),
                    // );
                  },
                  color: Colors.white,
                  elevation: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Keluar',
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: 'Poppins Medium',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
