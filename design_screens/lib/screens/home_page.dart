//import '../widgets/bottom_bar.dart';

import './../widgets/card_section.dart';
import 'package:flutter/material.dart';
import '../widgets/list_card_section.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  selectItem() {}
  @override
  Widget build(BuildContext context) {
    return buildHomePage(context);
  }

  Widget buildHomePage(BuildContext context) {
    return SafeArea(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(top: 1),
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Theme.of(context).accentColor,
              Theme.of(context).primaryColor
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'User Name',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                ButtonBar(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.search), onPressed: () {}),
                    IconButton(
                        icon: Icon(Icons.notifications_active),
                        onPressed: () {})
                  ],
                )
              ],
            ),
          ),
          Expanded(flex: 6, child: CardSection()),
          Expanded(child: ListCardSection()),
        ],
      ),
    );
  }
}
