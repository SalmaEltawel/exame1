import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  static const String routeName = "homeTab";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
            child: Image(image: AssetImage("assets/images/Ellipse 10.png"))),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Hello, Jade"),
              ],
            ),
            Text("Ready to workout?")
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge(
              child: Icon(Icons.notifications),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xffF8F9FC),
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Image(image: AssetImage("assets/images/heart.png")),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Heart Rate"),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    color: Color(0xffD9D9D9),
                    height: 30,
                    width: 2,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Row(
                    children: [
                      Icon(Icons.list),
                      SizedBox(
                        width: 15,
                      ),
                      Text("To-do"),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        color: Color(0xffD9D9D9),
                        height: 30,
                        width: 2,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Row(
                        children: [
                          Image(image: AssetImage("assets/images/Vector (1).png")),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Calo"),
                          SizedBox(
                            width: 15,
                          ),
            ],
          )
                    ],

              ),
      ],
            )
    ),
          ),
        ],
      ),
    );
  }
}
