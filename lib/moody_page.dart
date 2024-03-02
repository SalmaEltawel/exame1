import 'package:exam/emojis.dart';
import 'package:exam/indicator.dart';
import 'package:exam/tabs/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'gridview.dart';

class MoodyPage extends StatefulWidget {
  MoodyPage({super.key});

  static const String routeName = "moodyPage";

  @override
  State<MoodyPage> createState() => _MoodyPageState();
}

class _MoodyPageState extends State<MoodyPage> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge(
              child: Icon(Icons.notifications),
            ),
          )
        ],
        leading: Image(image: AssetImage("assets/images/logo (1).png")),
        title: Text("Moody",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              children: [
                Text(
                  "Hello,",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Text(
                  "Sara Rose",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "How are you feeling today ?",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Emojis(path: "assets/images/love.png", text: "Love"),
                SizedBox(
                  width: 30,
                ),
                Emojis(path: "assets/images/cool.png", text: "Cool"),
                SizedBox(
                  width: 30,
                ),
                Emojis(path: "assets/images/happy.png", text: "Happy"),
                SizedBox(
                  width: 30,
                ),
                Emojis(path: "assets/images/sad.png", text: "Sad")
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Feature",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    Row(
                      children: [
                        Text(
                          "See more",
                          style: TextStyle(
                              color: Color(0xff027A48),
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff027A48),
                          size: 15,
                        )
                      ],
                    ),
                  ],
                )),
            Indicator(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Exercise",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                  Row(
                    children: [
                      Text(
                        "See more",
                        style: TextStyle(
                            color: Color(0xff027A48),
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff027A48),
                        size: 15,
                      )
                    ],
                  ),
                ],
              ),
            ),
            CustomGridView(
            ),



          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          index=value;
          setState(() {
            Navigator.pushNamed(context, HomeTab.routeName);

          });

        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "",),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view_outlined),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),

      ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xff027A48),
        unselectedItemColor: Color(0xff667085),


      ),
    );
  }

  List<Widget> tabs = [
    HomeTab(),
  ];
}
