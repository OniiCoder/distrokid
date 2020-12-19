import 'package:distrokid/pages/profile.dart';
import 'package:distrokid/pages/upload.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  int _currentIndex = 0;
  List<Widget> _children = [
    Profile(),
    Upload(),
    Profile(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff141414),
          onTap: onTabTapped,
          type: BottomNavigationBarType.fixed,
          elevation: 2,
          currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(
              backgroundColor: Colors.white,
              activeIcon: Icon(
                Icons.show_chart,
                size: 30,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.show_chart,
                size: 30,
                color: Color(0xff7D7D7D),
              ),
              title: new Text(
                '',
              ),
            ),
            new BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.add,
                color: Color(0xff7D7D7D),
                size: 30 ,
              ),
              title: new Text(
                '',
              ),
            ),
            new BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.attach_money,
                size: 30,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.attach_money,
                color: Color(0xff7D7D7D),
                size: 30,
              ),
              title: new Text(
                '',
              ),
            ),
          ]),
      body: _children[_currentIndex],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
