import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 10,
      padding: EdgeInsets.all(20),
      child: Stack(
        children: <Widget>[
          Column(children: <Widget>[
            cardHeader(),
            cardContent(),
            cardButtons(),
          ]),
          Align(alignment: Alignment.bottomRight, child: userStory()),
        ],
      ),
    );
  }

  Widget cardHeader() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('UserName of person'),
              Text('caption of post'),
            ],
          ),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 30,
              ),
              onPressed: null)
        ],
      ),
    );
  }

  Widget cardContent() {
    return Container();
  }

  Widget cardButtons() {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(icon: Icon(Icons.favorite), onPressed: null),
        IconButton(icon: Icon(Icons.comment), onPressed: null),
        IconButton(icon: Icon(Icons.textsms), onPressed: null),
        IconButton(icon: Icon(Icons.bookmark), onPressed: null),
      ],
    ));
  }

  Widget userStory() {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.black54,
      child: Text('user'),
    );
  }
}
