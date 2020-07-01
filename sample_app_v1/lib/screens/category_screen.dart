import 'package:flutter/material.dart';
import 'package:sample_app_v1/screens/category_meals_screen.dart';
import '../widget/category_item.dart';
import '../dummy-data/dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  static const categoryRoute = '/categoryScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: categoryGridView(context),
    );
  }

  Widget categoryGridView(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.cake,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: null),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.filter,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: null),
                  SizedBox(height: 20),
                  IconButton(
                      icon: Icon(Icons.menu, color: Colors.white, size: 30.0),
                      onPressed: null)
                ],
              ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35, top: 10),
          child: Text('Health Food',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 40.0),
        Container(
          height: MediaQuery.of(context).size.height - 100.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(85.0))),
          child: ListView(
            primary: false,
            padding: EdgeInsets.only(left: 20, right: 20),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height - 20.0,
                  child: GridView(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 1.5,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      children: dummy_categories
                          .map((catData) => CategoryItem(
                              id: catData.id,
                              title: catData.title,
                              color: catData.color))
                          .toList()),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget listFoodItems(
      BuildContext context, String imgPath, String foodName, String price) {
    return Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: InkWell(
          splashColor: Theme.of(context).primaryColor,
          hoverColor: Theme.of(context).accentColor,
          onTap: () {
            Navigator.pushNamed(context, CategoryMealsScreen.routeNames);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  child: Row(
                children: <Widget>[
                  Hero(
                      tag: imgPath,
                      child: Image(
                        image: NetworkImage(imgPath),
                        fit: BoxFit.cover,
                        height: 50.0,
                        width: 50.0,
                      )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        foodName,
                        style: TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '$price \$',
                        style: TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              )),
              IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  onPressed: null)
            ],
          ),
        ));
  }
}
