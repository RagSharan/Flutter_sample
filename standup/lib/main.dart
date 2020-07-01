import 'package:flutter/material.dart';
//import 'pages/authentication.dart';
//import 'pages/home.dart';
import 'pages/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ArtiCa',
      theme: setTheme(),
      home: Profile(),
    );
  }

  setTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      accentColor: Colors.red,
      fontFamily: 'Georgia',
      textTheme: TextTheme(
        headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        body1: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
      ),
    );
  }
}
