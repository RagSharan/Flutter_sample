import 'package:flutter/material.dart';
import 'package:sample_app_v1/models/meal.dart';
import 'package:sample_app_v1/widget/meal_item.dart';
import '../dummy-data/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeNames = 'category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = dummy_meals.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        backgroundColor: Colors.amber,
        body: foodList(context, categoryMeals, categoryTitle));
  }

  ListView foodList(
      BuildContext context, List<Meal> categoryMeals, String categoryTitle) {
    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.filter,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: null)
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Text(categoryTitle,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 30.0),
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(85.0),
            ),
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return MealItem(categoryMeals[index]);
            },
            itemCount: categoryMeals.length,
          ),
        )
      ],
    );
  }
}
