import 'package:design_screens/config/my_config.dart';
import 'package:design_screens/widgets/tab_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Theme.of(context).accentColor,
                  Theme.of(context).primaryColor
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              IconButton(
                  alignment: Alignment(85.0, 2.0),
                  icon: Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                  onPressed: () {}),
              Positioned(
                bottom: 0,
                right: 150,
                child: Container(
                    decoration: BoxDecoration(
                        boxShadow: MyConfig.componentShadows(),
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).accentColor,
                            style: BorderStyle.solid,
                            width: 3)),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg'),
                    )),
              ),
            ],
          ),
          Expanded(
            child: TabsBar(),
          )
        ],
      ),
    );
  }
}
