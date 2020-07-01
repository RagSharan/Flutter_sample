import 'package:design_screens/config/my_config.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Username',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Caption mentioned By person',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
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
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // decoration: BoxDecoration(
            //   boxShadow: MyConfig.componentShadows(),
            // ),
            child: Stack(
              children: <Widget>[
                Image.network(
                  'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: 1,
                  bottom: 10,
                  child: Container(
                      decoration: BoxDecoration(
                          boxShadow: MyConfig.componentShadows(),
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Theme.of(context).accentColor,
                              style: BorderStyle.solid,
                              width: 3)),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg'),
                      )),
                )
              ],
            ),
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            //height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.grey,
                      size: 30,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.comment,
                        color: Theme.of(context).primaryColor),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.textsms,
                        color: Theme.of(context).accentColor),
                    onPressed: () {}),
                SizedBox(
                  width: 80,
                ),
                IconButton(
                    icon:
                        Icon(Icons.save, color: Theme.of(context).accentColor),
                    onPressed: () {})
              ],
            ))
      ],
    );
  }
}
