import 'package:design_screens/config/my_config.dart';
import 'package:flutter/material.dart';
import '../widgets/dropdown_month.dart';
import '../widgets/app_event_card.dart';

class CalenderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width - 80,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 80,
                    //  height: 80,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Theme.of(context).accentColor,
                      Theme.of(context).primaryColor
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        DropdownMonth(),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purple.shade300,
                          ),
                          child: Center(
                              child: Text(
                            '5',
                            style: TextStyle(
                                fontSize: 25, color: Colors.grey.shade200),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return AppEventCard();
                    },
                    itemCount: 5,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: 80,
            child: Column(
              children: <Widget>[
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                      boxShadow: MyConfig.componentShadows(),
                      gradient: LinearGradient(colors: [
                        Theme.of(context).buttonColor,
                        Theme.of(context).primaryColor
                      ])),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.create,
                            size: 40,
                            color: Colors.grey.shade200,
                          ),
                          onPressed: () {}),
                      Text(
                        'Create',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          Theme.of(context).primaryColor,
                          Theme.of(context).accentColor
                        ])),
                        child: Column(
                          children: <Widget>[
                            Divider(color: Colors.grey.shade200),
                            Center(
                              child: Text(
                                '${index + 1}',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey.shade200),
                              ),
                            ),
                            Text(
                              'FEB',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade200),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
