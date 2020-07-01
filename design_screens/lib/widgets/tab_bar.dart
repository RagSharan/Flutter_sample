import 'package:flutter/material.dart';

class TabsBar extends StatefulWidget {
  @override
  _TabsBarState createState() => _TabsBarState();
}

class _TabsBarState extends State<TabsBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('UserName'),
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: TabBar(
                labelColor: Theme.of(context).primaryColor,
                labelStyle: Theme.of(context).textTheme.headline1,
                tabs: <Widget>[
                  Tab(
                      text: 'About',
                      icon: Icon(
                        Icons.sentiment_very_satisfied,
                        color: Theme.of(context).accentColor,
                        size: 30,
                      )),
                  Tab(
                      text: 'MySpace',
                      icon: Icon(
                        Icons.view_stream,
                        color: Theme.of(context).accentColor,
                        size: 25,
                      ))
                ]),
          ),
          body: TabBarView(children: <Widget>[
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('About Me',
                        style: Theme.of(context).textTheme.headline1),
                    IconButton(icon: Icon(Icons.edit), onPressed: () {})
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'About Me if ther need to implement annything else in this app plaesea let me know i am feeling little confue',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'Name Of the User',
                        style: TextStyle(color: Colors.blue[900], fontSize: 15),
                      ),
                      Text(
                        'Ratings Out Of 5',
                        style: TextStyle(color: Colors.blue[900], fontSize: 15),
                      )
                    ],
                  ),
                ),
              ],
            )),
            Container(
              padding: EdgeInsets.all(8),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Container(
                    // width: 50,
                    height: 50,
                    color: Colors.orange,
                  );
                },
                itemCount: 10,
              ),
            )
          ]),
        ));
  }
}
