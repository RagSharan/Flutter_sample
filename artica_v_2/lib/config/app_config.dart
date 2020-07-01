import 'package:flutter/material.dart';

class AppConfig {
  static final ThemeData firstTheme = ThemeData(
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primarySwatch: Colors.teal,
      primaryColor: Colors.green,
      accentColor: Colors.greenAccent,
      canvasColor: Colors.white,
      fontFamily: 'Roboto',
      textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            headline1: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
      inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.blue),
          errorStyle: TextStyle(fontSize: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )),
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.normal,
        buttonColor: Colors.green,
        disabledColor: Colors.grey,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
      iconTheme: IconThemeData(
        size: 20,
        color: Colors.green,
      ));

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
  );

  static final ThemeData greyTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey,
  );
}
