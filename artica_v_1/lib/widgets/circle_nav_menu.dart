import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class CircleNavMenu extends StatefulWidget {
  static final route = 'navMenu';
  @override
  _CircleNavMenuState createState() => _CircleNavMenuState();
}

class _CircleNavMenuState extends State<CircleNavMenu> {
  bool _isHide = false;

  //GlobalKey _navigationKey = GlobalKey();
  final List<Widget> _pages = [
    HomeScreen(),
    // ProfileScreen(),
    // ActivityBoard(),
    // CalenderScreen(),
    // LiveScreen(),
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
      appBar: AppBar(title: Text('Artica')),
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
            child: floatingMenuItem(0.2, 0.99, Icons.home, 0)),
        Visibility(
            visible: _isHide,
            child: floatingMenuItem(0.05, 0.77, Icons.people, 1)),
        Visibility(
            visible: _isHide,
            child: floatingMenuItem(0.15, 0.55, Icons.video_library, 2)),
        Visibility(
            visible: _isHide,
            child: floatingMenuItem(0.5, 0.44, Icons.calendar_today, 3)),
        Visibility(
            visible: _isHide,
            child: floatingMenuItem(0.9, 0.49, Icons.camera, 4)),
      ],
    );
  }

  Align floatingMenuItem(double x, double y, IconData icons, int index) {
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
