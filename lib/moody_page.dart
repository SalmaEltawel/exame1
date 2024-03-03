import 'package:exam/custom_bottom_navigation.dart';
import 'package:exam/emojis.dart';
import 'package:exam/indicator.dart';
import 'package:exam/tabs/calender.dart';
import 'package:exam/tabs/see_more_tab.dart';
import 'package:exam/tabs/insights.dart';
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
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Badge(
              child: Icon(Icons.notifications),
            ),
          )
        ],
        leading: const Image(image: AssetImage("assets/images/logo (1).png")),
        title: const Text("Moody",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Row(
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
            const SizedBox(
              height: 10,
            ),
            const Text(
              "How are you feeling today ?",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Emojis(path: "assets/images/love.png", text: "Love"),
                const SizedBox(
                  width: 30,
                ),
                Emojis(path: "assets/images/cool.png", text: "Cool"),
                const SizedBox(
                  width: 30,
                ),
                Emojis(path: "assets/images/happy.png", text: "Happy"),
                const SizedBox(
                  width: 30,
                ),
                Emojis(path: "assets/images/sad.png", text: "Sad")
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Feature",
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
            )),
            Indicator(),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context,SeeMore.routeName);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Exercise",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                    Column(
                      children: [
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
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 200,
                  child: CustomGridView(),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        label1: "",
        label2: "",
        label3: "",
        label4: "",
        icon1: Icon(
          Icons.home,
          color: Color(0xff027A48),
        ),
        icon2: InkWell(
          child: Icon(Icons.grid_view_outlined),
          onTap: () {
            Navigator.pushNamed(context, Insights.routeName);
          },
        ),
        icon3: Icon(Icons.calendar_today_outlined),
        icon4: Icon(Icons.person),
      ),
    );
  }
}
