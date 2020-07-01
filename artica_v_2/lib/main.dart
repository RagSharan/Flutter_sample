import 'package:artica_v_2/src/screens/circular_navigation.dart';
import 'package:artica_v_2/src/screens/home_screen.dart';

import './src/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'config/app_config.dart';
import 'src/blocs/auth_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: AppConfig.firstTheme,
        home: LoginScreen(),
        routes: {
          CircularNavigation.routeName: (context) => CircularNavigation(),
          HomeScreen.routeName: (context) => HomeScreen(),
        },
      ),
    );
  }
}
