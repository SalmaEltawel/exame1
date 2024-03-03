import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam/tabs/custom_Button.dart';
import 'package:flutter/material.dart';

import '../indicator.dart';

class Insights extends StatefulWidget {
  Insights({super.key});

  static const String routeName = "insights";

  @override
  State<Insights> createState() => _InsightsState();
}

class _InsightsState extends State<Insights> {
  int index = 1;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/Vector (2).png"),
            ),
            SizedBox(
              width: 10,
            ),
            Text("AliceCare"),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),

                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xffD0D5DD),
                    ),
                    hintText: "Articles, Video, Audio and More,...",
                    filled: true,
                    fillColor: Colors.white,

                    hintStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xffD0D5DD,)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Color(0xffD0D5DD),)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: Color(0xffD0D5DD)))),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    CustomButton(
                      text: "Discover",
                      color: const Color(0xff6941C6),
                      background: const Color(0xffD6BBFB),
                    ),
                    CustomButton(
                      text: "News",
                      color: const Color(0xff667085),
                      background: Colors.white,
                    ),
                    CustomButton(
                        text: "Most Viewed",
                        color: const Color(0xff667085),
                        background: Colors.white),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hot topics",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    Row(
                      children: [
                        Text(
                          "See more",
                          style: TextStyle(
                              color: Color(0xff5925DC),
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff5925DC),
                          size: 15,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            CarouselSlider(
                items: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: const Image(
                        image:
                            AssetImage("assets/images/Frame 3466530 (1).png")),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Image(
                        image: AssetImage("assets/images/Frame 3466530.png")),
                  )
                ],
                options: CarouselOptions(
                  height: 150,
                  enableInfiniteScroll: true,
                )),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Get Tips",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffE4E7EC),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Image(
                          image: AssetImage(
                              "assets/images/Doctor-PNG-Images 1.png")),
                      Column(
                        children: [
                          const Text(
                            "Connect with doctors &  \n get suggestions",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff000000)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text("Connect now and get \n expert insights ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000))),
                          CustomButton(
                              text: "View detail",
                              color: Colors.white,
                              background: const Color(0xff7F56D9)),
                        ],
                      ),
                    ]),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cycle Phases and Period",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    Row(
                      children: [
                        Text(
                          "See more",
                          style: TextStyle(
                              color: Color(0xff5925DC),
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff5925DC),
                          size: 15,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Today",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined), label: "Insights"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
        ],
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: const Color(0xff6941C6),
        unselectedItemColor: const Color(0xff667085),
      ),
    );
  }
}
