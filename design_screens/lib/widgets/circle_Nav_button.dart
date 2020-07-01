import 'package:flutter/material.dart';
import '../screens/live_screen.dart';
import '../screens/calender_screen.dart';
import '../screens/ActivityBoard.dart';
import '../screens/home_page.dart';
import '../screens/profile_screen.dart';

class CircleNavButton extends StatefulWidget {
  static const routeName = '/circle';
  @override
  _CircleNavButtonState createState() => _CircleNavButtonState();
}

class _CircleNavButtonState extends State<CircleNavButton> {
  bool _isHide = false;

  //GlobalKey _navigationKey = GlobalKey();
  final List<Widget> _pages = [
    HomePage(),
    ProfileScreen(),
    ActivityBoard(),
    CalenderScreen(),
    LiveScreen(),
  ];
  int _selectedPageIndex = 0;

  void showToast() {
    setState(() {
      _isHide = !_isHide;
    });
  }

  void _selectPage(int index) {
    setState(() {
      _isHide = !_isHide;
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _pages[_selectedPageIndex],
          floatingMenuButtons(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showToast,
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.menu,
          size: 30,
        ),
      ),
    );
  }

  Stack floatingMenuButtons() {
    return Stack(
      children: <Widget>[
        Visibility(
            visible: _isHide,
            child: floatingButtonItem(0.2, 0.99, Icons.home, 0)),
        Visibility(
            visible: _isHide,
            child: floatingButtonItem(0.05, 0.77, Icons.people, 1)),
        Visibility(
            visible: _isHide,
            child: floatingButtonItem(0.15, 0.55, Icons.video_library, 2)),
        Visibility(
            visible: _isHide,
            child: floatingButtonItem(0.5, 0.44, Icons.calendar_today, 3)),
        Visibility(
            visible: _isHide,
            child: floatingButtonItem(0.9, 0.49, Icons.camera, 4)),
      ],
    );
  }

  Align floatingButtonItem(double x, double y, IconData icons, int index) {
    return Align(
      alignment: Alignment(x, y),
      child: FloatingActionButton(
        mini: true,
        backgroundColor: Theme.of(context).accentColor,
        elevation: 8,
        child: Icon(icons),
        onPressed: () => _selectPage(index),
      ),
    );
  }
}
