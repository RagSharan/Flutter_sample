import 'package:artica_v_1/screens/home_screen.dart';
import 'package:artica_v_1/widgets/circle_nav_menu.dart';
import 'package:flutter/material.dart';
import './app_config.dart';
import './screens/help_screen.dart';
import './screens/login_screen.dart';
import './bloc/auth_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: AppThemes.lightTheme,
        //home: HelpScreen(),
        initialRoute: LoginScreen.route,
        routes: {
          // '/': (context) => LoginScreen(),
          HelpScreen.route: (context) => HelpScreen(),
          LoginScreen.route: (context) => LoginScreen(),
          CircleNavMenu.route: (contex) => CircleNavMenu(),
          HomeScreen.route: (context) => HomeScreen(),
        },
      ),
    );
  }
}
