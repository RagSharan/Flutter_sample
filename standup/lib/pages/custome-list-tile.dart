import 'package:flutter/material.dart';

class CustomeListTile extends StatelessWidget {
  final String name;
  final IconData iconName;
  Function onTab() {
    return null;
  }

  CustomeListTile(this.name, this.iconName, onTab());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: InkWell(
        splashColor: Colors.orangeAccent,
        onTap: () => {},
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 3.0),
                child: Row(
                  children: <Widget>[
                    Icon(iconName),
                    SizedBox(width: 10.0),
                    Text(name, style: TextStyle(fontSize: 20.0)),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_right,
                size: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
