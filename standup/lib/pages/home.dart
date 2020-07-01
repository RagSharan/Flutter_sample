import 'package:flutter/material.dart';
import 'bottom-bar.dart';
import 'custome-list-tile.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:
              Text('ArtiCa', style: TextStyle(fontSize: 25, color: Colors.red)),
        ),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[Colors.deepOrange, Colors.orange])),
                child: Center(
                  child: Text(
                    'Artica',
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                )),
            CustomeListTile('Profile', Icons.people, () => {}),
            CustomeListTile('Notification', Icons.notifications, () => {}),
            CustomeListTile('Settings', Icons.settings, () => {}),
            CustomeListTile('Followers', Icons.present_to_all, () => {}),
            CustomeListTile('LogOut', Icons.lock_open, () => {}),
          ],
        )),
        bottomNavigationBar: BottomBar(),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: RaisedButton(
                color: Colors.greenAccent,
                child: Text(
                  'Laughter Challenge',
                ),
                onPressed: () {},
              ),
            ),
            Container(
              // height: 100,
              width: 100,
              color: Colors.indigoAccent,
              child: Center(child: Text('Story narration')),
            ),
            Container(
              // height: 100,
              width: 100,
              color: Colors.limeAccent,
              child: Center(child: Text('Stand Up comedy')),
            ),
            Container(
              //  height: 100,
              width: 100,
              color: Colors.purpleAccent,
              child: Center(child: Text('Music Concert')),
            )
          ],
        )));
  }
}
