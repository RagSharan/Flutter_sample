import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = 'meal-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: recipeDetail(context),
    );
  }

  Widget recipeDetail(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final Meal meal = routeArgs['meal'];
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
              child: Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.filter,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        onPressed: null),
                    IconButton(
                        icon: Icon(
                          Icons.menu,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        onPressed: null),
                  ],
                ),
              ],
            ),
          )),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(meal.title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
          ),
          Container(
            //height: MediaQuery.of(context).size.height - 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(85)),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 80,
                    child: Image(image: NetworkImage(meal.imageUrl)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text('Ingredients',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    height: 300,
                    child: ListView.builder(
                      itemBuilder: (context, index) => Card(
                        color: Colors.black12,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            meal.ingredients[index],
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      itemCount: meal.ingredients.length,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    child: Text('Steps',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    height: 300,
                    child: ListView.builder(
                      itemBuilder: (context, index) => ListTile(
                        leading: CircleAvatar(child: Text('# ${(index + 1)}')),
                        title: Text(meal.steps[index]),
                      ),
                      itemCount: meal.steps.length,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
