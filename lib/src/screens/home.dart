import 'package:flutter/material.dart';
import 'package:food_order/src/widgets/category.dart';
import 'package:food_order/src/widgets/featured.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List foods = [
    {'title': "Beer", "image": "assets/images/pic/beer.jpg"},
    {'title': "Wine", "image": "assets/images/pic/wine.jpg"},
    {'title': "Meal", "image": "assets/images/pic/meal.jpg"},
    {'title': "Fruit", "image": "assets/images/pic/fruit.jpg"},
    {'title': "Juices", "image": "assets/images/pic/drink.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Food Myanmar",
                  style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Stack(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.notifications_none,
                      // color: Colors.red[400],
                      size: 25,
                    ),
                    onPressed: () {},
                  ),
                  Positioned(
                    left: 13,
                    top: 10,
                    child: Container(
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                          color: Colors.red[300],
                          borderRadius: BorderRadius.circular(20)),
                      child: FittedBox(
                        child: Text("7"),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 5),
          Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.red[50], offset: Offset(2, 2), blurRadius: 10)
              ]),
              child: ListTile(
                leading: Icon(Icons.search, color: Colors.red[300]),
                title: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for food and restaurent"),
                ),
                trailing: Icon(Icons.filter_list, color: Colors.red[300]),
              )),
          SizedBox(height: 20),
          Category(),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                    height:4,
                decoration: BoxDecoration(color: Colors.red[100]),
              )),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("The Most Favourited Foods",
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey))),
             Expanded(
                  child: Container(
                    height:4,
                decoration: BoxDecoration(color: Colors.red[100]),
              )),
            ],
          ),
          Featured()
        ]),
      ),
    );
  }
}
