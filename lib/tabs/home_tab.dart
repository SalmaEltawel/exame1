import 'package:exam/activity.dart';
import 'package:exam/custom_bottom_navigation.dart';
import 'package:exam/moody_page.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  HomeTab({super.key});

  static const String routeName = "homeTab";

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
            child: Image(image: AssetImage("assets/images/Ellipse 10.png"))),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Hello, Jade",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
              ],
            ),
            Text(
              "Ready to workout?",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Badge(
              child: Icon(Icons.notifications),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: const Color(0xffF8F9FC),
            height: 100,
            child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(image: AssetImage("assets/images/heart.png")),

                    const Column(
                      children: [
                        Text(
                          "Heart Rate",
                          style:
                              TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                        Text("81 BPM",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),)
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      color: const Color(0xffD9D9D9),
                      height: 50,
                      width: 2,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Image(image: AssetImage("assets/images/Icon (1).png")),
                        
                        const Column(
                          children: [
                            Text("To-do",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 12)),
                            Text("32.5 %",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),)

                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          color: const Color(0xffD9D9D9),
                          height: 50,
                          width: 2,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                                image:
                                    AssetImage("assets/images/Vector (1).png")),
                            Column(
                              children: [
                                Text("Calo",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400, fontSize: 12)),
                                Text("1000 cal",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),)

                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            child: const Row(
              children: [
                Text(
                  "Workout Programs",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const DefaultTabController(
              length: 4,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TabBar(
                    unselectedLabelColor: Color(0xff667085),
                    labelColor: Color(0xff363F72),
                    tabs: [
                      Text("All Type"),
                      Text("Full Body"),
                      Text("Upper"),
                      Text("Lower"),
                    ]),
              )),
          Activity(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(

        icon1:InkWell(
          onTap: () {
            Navigator.pushNamed(context, MoodyPage.routeName);
          },
            child: Icon(Icons.home)), label1: "",
        icon2: Icon(Icons.navigation),label2: "",
        icon3:  Icon(Icons.bar_chart),label3: "",
        icon4:  Icon(Icons.person),label4: "",

      ),
    );
  }
}
