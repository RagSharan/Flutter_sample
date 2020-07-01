import 'package:design_screens/config/my_config.dart';
import 'package:flutter/material.dart';

class MultiShapes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.orange],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                boxShadow: MyConfig.componentShadows()),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1),
                itemBuilder: (context, index) {
                  return Container(
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.yellow, Colors.green],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                    ),
                    child: Image.network(
                        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg'),
                  );
                },
                itemCount: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
