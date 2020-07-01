import 'package:artica_v_2/src/widgets/home_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static final routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          child: Column(
        children: <Widget>[HomeCard(), Divider(color: Colors.black)],
      )),
    );
  }
}
