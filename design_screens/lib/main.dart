import 'package:design_screens/screens/login_screen.dart';
import 'package:design_screens/service_locator.dart';
import './widgets/circle_Nav_button.dart';
import './widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import './screens/home_page.dart';
import './config/my_config.dart';

void main() {
  setUpServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyConfig.buildThemeData(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginScreen(),
        CircleNavButton.routeName: (context) => CircleNavButton(),
        BottomNavBar.routeName: (context) => BottomNavBar(),
        LoginScreen.routeLogin: (context) => LoginScreen(),
        HomePage.routeName: (context) => HomePage()
      },
    );
  }
}
