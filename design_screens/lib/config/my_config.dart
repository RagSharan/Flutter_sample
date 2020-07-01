import 'package:flutter/material.dart';

class MyConfig {
  static ThemeData buildThemeData() {
    return ThemeData(
      primarySwatch: Colors.deepPurple,
      primaryColor: Colors.purpleAccent[400],
      accentColor: Colors.pink[400],
      canvasColor: Colors.grey.shade300,
      buttonColor: Colors.orange[600],
      fontFamily: 'Raleway',
      textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1:
              TextStyle(color: Color.fromRGBO(20, 51, 51, 1), fontSize: 18),
          bodyText2:
              TextStyle(color: Color.fromRGBO(20, 51, 51, 1), fontSize: 18),
          headline1: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          )),
    );
  }

  static List<BoxShadow> componentShadows() {
    List<BoxShadow> shadowList = [
      BoxShadow(offset: Offset(10, 10), color: Colors.black12, blurRadius: 10),
      BoxShadow(
        offset: Offset(10, -10),
        color: Colors.white.withOpacity(0.35),
        blurRadius: 10,
      ),
    ];
    return shadowList;
  }
}
