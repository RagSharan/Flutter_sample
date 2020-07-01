import 'package:flutter/material.dart';
import 'package:standup/pages/Card-list-view.dart';
import 'dart:convert' as convert;
import 'bottom-bar.dart';
import 'package:http/http.dart' as http;

import 'custome-list-tile.dart';
import 'Card-list-view.dart';

class Profile extends StatefulWidget {
  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  List<String> personalList = new List();
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    fetchFive();
    _scrollController.addListener(() => {
          if (_scrollController.position.pixels ==
              _scrollController.position.maxScrollExtent)
            {fetchFive()}
        });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:
              Text('ArtiCa', style: TextStyle(fontSize: 25, color: Colors.red)),
        ),
        bottomNavigationBar: BottomBar(),
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
            CustomeListTile('LogOut', Icons.exit_to_app, () => {}),
          ],
        )),
        body: Column(
          children: <Widget>[
            Card(
                margin: EdgeInsets.only(top: 0),
                elevation: 30.0,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 40.0,
                      child: IconButton(
                          icon: Icon(Icons.add_a_photo),
                          color: Colors.red,
                          iconSize: 34.0,
                          onPressed: null),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Raghvendra sharan',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        ),
                        Text(
                          'Description about me max 25 words \n could be used for this \n description.',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 15.0,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ],
                )),
            CardListView(personalList, _scrollController),
          ],
        ));
  }

  fetch() async {
    final response = await http.get('https://dog.ceo/api/breeds/image/random');
    if (response.statusCode == 200) {
      setState(() {
        print(response.body);
        personalList.add(convert.jsonDecode(response.body)['message']);
      });
    } else {
      //personalList.add("Image.asset('lib/assets/image-format.png')");
      throw Exception('Failed to load images');
    }
  }

  fetchFive() {
    for (int i = 0; i < 5; i++) {
      fetch();
    }
  }
}
