import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homeScreen(context, 'url of images'),
    );
  }

  Widget homeScreen(BuildContext context, String url) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Theme.of(context).primaryColor,
        Theme.of(context).accentColor
      ])),
      child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 25),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  radius: 40,
                  //child: Image(image: NetworkImage(url)),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Name Of Person',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'TagLine Of Image',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
                IconButton(icon: Icon(Icons.mode_edit), onPressed: () {})
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        setMainContainerScroll()
        //setPageView()
      ]),
    );
  }

  Widget setMainContainerScroll() {
    return Column(
      children: <Widget>[
        Container(
          width: 350,
          height: 200,
          color: Colors.green,
        ),
        Container(
          width: 350,
          height: 200,
          color: Colors.yellow,
        ),
        Container(
          width: 350,
          height: 200,
          color: Colors.red,
        ),
      ],
    );
  }

  Widget setPageView() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
            color: Colors.red,
          ),
          Container(
            width: 160.0,
            color: Colors.blue,
          ),
          Container(
            width: 160.0,
            color: Colors.green,
          ),
          Container(
            width: 160.0,
            color: Colors.yellow,
          ),
          Container(
            width: 160.0,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
