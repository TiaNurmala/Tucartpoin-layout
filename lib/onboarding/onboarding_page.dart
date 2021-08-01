import 'package:flutter/material.dart';
import 'package:merge/auth/login.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({Key key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: 8,
      width: isActive ? 24 : 16,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFe3724b) : Color(0xFFffdcb5),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Lewati',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins Semibold',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 540,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 50),
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/onboardOne.png',
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Lorem Ipsum',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Poppins Bold',
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'consectetur adispicing elit \n sed do euismod tempor incidunt',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Poppins Regular',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 50),
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/onboardTwo.png',
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Lorem Ipsum',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Poppins Bold',
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'consectetur adispicing elit \n sed do euismod tempor incidunt',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Poppins Regular',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 50),
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/onboardThree.png',
                                  ),
                                  height: 275,
                                ),
                              ),
                            ),
                            Center(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Lorem Ipsum',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Poppins Bold',
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'consectetur adispicing elit \n sed do euismod tempor incidunt',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Poppins Regular',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                ],
              ),
            ),
          ),
          _currentPage != _numPages - 1
              ? Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    height: 50,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      onPressed: () {
                        _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
                      ),
                      color: Color(0xFFe3724b),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Selanjutnya',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins Medium',
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : Text(''),
        ],
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 80,
              width: double.infinity,
              color: Color(0xFFe3724b),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Center(
                  child: Text(
                    'Mulai Sekarang',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins Semibold',
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
