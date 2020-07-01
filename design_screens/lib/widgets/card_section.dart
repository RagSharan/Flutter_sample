import 'package:flutter/material.dart';
import './card_details.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return horizontalCardView();
  }

  ListView horizontalCardView() {
    return ListView.builder(
        itemCount: 5,
        //scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            margin: EdgeInsets.symmetric(horizontal: 0, vertical: 1),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                    left: -300,
                    top: -100,
                    bottom: -100,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.cyan.shade100),
                    )),
                CardDetails(),
              ],
            ),
          );
        });
  }
}
