import 'package:design_screens/screens/ActivityBoard.dart';

import '../screens/profile_screen.dart';
import '../screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../screens/calender_screen.dart';
import '../screens/live_screen.dart';

class BottomNavBar extends StatefulWidget {
  static const routeName = '/bottomNav';
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  GlobalKey _navigationKey = GlobalKey();
  final List<Widget> _pages = [
    LiveScreen(),
    CalenderScreen(),
    ActivityBoard(),
    HomePage(),
    ProfileScreen()
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        key: _navigationKey,
        color: Colors.orange,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.blue[600],
        height: 50.0,
        items: <Widget>[
          Icon(
            Icons.camera,
            size: 25,
            color: Colors.grey.shade200,
          ),
          Icon(
            Icons.calendar_today,
            size: 25,
            color: Colors.grey.shade200,
          ),
          Icon(
            Icons.tv,
            size: 25,
            color: Colors.grey.shade200,
          ),
          Icon(
            Icons.home,
            size: 25,
            color: Colors.grey.shade200,
          ),
          Icon(
            Icons.person,
            size: 25,
            color: Colors.grey.shade200,
          ),
        ],
        animationDuration: Duration(microseconds: 200),
        animationCurve: Curves.bounceInOut,
        onTap: (index) => _selectPage(index),
      ),
    );
  }
}
