import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.orange,
      backgroundColor: Colors.white,
      buttonBackgroundColor: Colors.lightBlue,
      height: 50.0,
      items: <Widget>[
        Icon(Icons.add, size: 20),
        Icon(Icons.list, size: 20),
        Icon(Icons.compare_arrows, size: 20),
      ],
      animationDuration: Duration(microseconds: 200),
      animationCurve: Curves.bounceInOut,
      onTap: (index) {
        //Handle button tap
      },
    );
  }
}
