import 'package:flutter/material.dart';
import 'package:merge/in_app/explore/explore_page.dart';
import 'package:merge/in_app/home/home_page.dart';
import 'package:merge/in_app/profile/profile_page.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    ExplorePage(),
    ProfilePage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: TitledBottomNavigationBar(
        indicatorColor: Color(0xFFe3724b),
        inactiveColor: Colors.black,
        activeColor: Color(0xFFe3724b),
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          TitledNavigationBarItem(
            title: Text('Beranda'),
            icon: Icons.home,
          ),
          TitledNavigationBarItem(
            title: Text('Cari'),
            icon: Icons.search,
          ),
          TitledNavigationBarItem(
            title: Text("Profil"),
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}