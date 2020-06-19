import 'package:flutter/material.dart';

class Featured extends StatelessWidget {

  final List foods=[
    {"name": "Chicken","image" : "assets/images/pic/food8.jpg"},
    {"name": "Soul","image" : "assets/images/pic/food9.jpg"},
    {"name": "Fish of US","image" : "assets/images/pic/food7.jpg"},
    {"name": "Manarish","image" : "assets/images/pic/food6.jpg"},

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 240,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foods.length,
                itemBuilder: (ctx, index) => Container(
                      height: 240,
                      width: 200,
                      child: Card(
                        shadowColor: Colors.red[200],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10) ,topLeft: Radius.circular(10) )),
                        elevation: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10) ,topLeft: Radius.circular(10) ),
                                                          child: Image.asset(
                                foods[index]['image'],
                                width: 200,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(foods[index]['name'],style:TextStyle(color:Colors.grey,fontSize: 16,fontWeight: FontWeight.w800)),
                                  IconButton(
                                      icon: Icon(Icons.favorite_border),
                                      onPressed: null)
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text("4.7"),
                                      SizedBox(width: 5),
                                      Icon(Icons.star,size: 16,color: Colors.red[200],),
                                      Icon(Icons.star,size: 16,color: Colors.red[200],),
                                      Icon(Icons.star,size: 16,color: Colors.red[200],),
                                      Icon(Icons.star,size: 16,color: Colors.red[200],),
                                      Icon(Icons.star,size: 16,color: Colors.red[200],)
                                    ],
                                  ),
                                  Text(
                                    "MMK 500",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red[200]),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
          );
  }
}