import 'package:flutter/material.dart';
import './screens/category_meals_screen.dart';
import 'package:sample_app_v1/home.dart';
import './screens/category_screen.dart';
import './screens/meal_detail_screen.dart';
import 'login.dart';
//import 'home.dart';
//import './login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Theme.of(context).accentColor,
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/home': (context) => Home(),
        Login.routeLogin: (context) => Login(),
        CategoryScreen.categoryRoute: (context) => CategoryScreen(),
        CategoryMealsScreen.routeNames: (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
      },
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
      primarySwatch: Colors.deepOrange,
      accentColor: Colors.orangeAccent,
      canvasColor: Color(0xFF21BFBD),
      fontFamily: 'Raleway',
      textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          headline1: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
