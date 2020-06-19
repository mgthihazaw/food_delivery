import 'package:flutter/material.dart';

import '../../models/category.dart' as m;

class Category extends StatelessWidget {
  final List<m.Category> foods = [
    m.Category(name: "Beer", image: "assets/images/pic/beer.jpg"),
    m.Category(name: "Wine", image: "assets/images/pic/wine.jpg"),
    m.Category(name: "Meal", image: "assets/images/pic/meal.jpg"),
    m.Category(name: "Fruit", image: "assets/images/pic/fruit.jpg"),
    m.Category(name: "Juices", image: "assets/images/pic/drink.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: foods.length,
          itemBuilder: (ctx, index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.red[50],
                        offset: Offset(2, 2),
                        blurRadius: 10)
                  ]),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        foods[index].image,
                        width: 100,
                        height: 80,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(height: 2),
                  FittedBox(child: Text(foods[index].name))
                ],
              )),
        ));
  }
}
