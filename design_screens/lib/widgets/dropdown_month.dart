import 'package:flutter/material.dart';

class DropdownMonth extends StatefulWidget {
  @override
  _DropdownMonthState createState() => _DropdownMonthState();
}

class _DropdownMonthState extends State<DropdownMonth> {
  String dropdownValue = 'January';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(
        Icons.arrow_drop_down,
        color: Colors.black,
      ),
      iconSize: 30,
      elevation: 16,
      style: TextStyle(color: Colors.black, fontSize: 20),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>[
        'January',
        'Fabruary',
        'March',
        'Aprail',
        'May',
        'June',
        'July',
        'August',
        'September',
        'November',
        'December'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(color: Colors.black),
          ),
        );
      }).toList(),
    );
  }
}
