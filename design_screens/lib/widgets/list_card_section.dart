import 'package:design_screens/config/my_config.dart';
import 'package:flutter/material.dart';

class ListCardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Container(
                    width: 80,
                    height: double.minPositive,
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: MyConfig.componentShadows()),
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                              'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  );
                }))
      ],
    );
  }
}
