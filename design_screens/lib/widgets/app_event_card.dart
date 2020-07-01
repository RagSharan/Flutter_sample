import 'package:flutter/material.dart';

class AppEventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text('headline1 Of Event',
                  style: Theme.of(context).textTheme.headline1),
            ),
            SizedBox(
              height: 15,
            ),
            Text('About Event-', style: Theme.of(context).textTheme.headline1),
            Text(
              'about event why someone should join it. Laughter event is going to work in tremendous way',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Timings:',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  '19:00 - 23:00',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Host',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  'Rahul Soni',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Participant Caunt:',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  '120',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.grey,
                          size: 30,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.comment,
                          color: Colors.grey,
                          size: 30,
                        ),
                        onPressed: () {}),
                  ],
                ),
                ButtonBar(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.add_circle_outline,
                          color: Colors.green,
                          size: 40,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(Icons.remove_circle_outline,
                            color: Colors.red, size: 40),
                        onPressed: () {}),
                  ],
                )
              ],
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
            )
          ],
        ),
      ),
    );
  }
}
