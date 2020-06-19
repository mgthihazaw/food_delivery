import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List foods = [
    {'title': "Pizza", "image": "assets/images/pic/food1.jpg"},
    {'title': "Chicken", "image": "assets/images/pic/food2.jpg"},
    {'title': "Pizza", "image": "assets/images/pic/food3.jpg"},
    {'title': "Pizza", "image": "assets/images/pic/food4.jpg"},
    {'title': "Pizza", "image": "assets/images/pic/food5.jpg"},
    {'title': "Pizza", "image": "assets/images/pic/food6.jpg"},
    {'title': "Pizza", "image": "assets/images/pic/food8.jpg"},
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
          Container(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
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
                              foods[index]['image'],
                              width: 60,
                              height: 50,
                              fit: BoxFit.cover,
                            )),
                        SizedBox(height: 2),
                        FittedBox(child: Text(foods[index]['title']))
                      ],
                    )),
              )),
        ]),
      ),
    );
  }
}
