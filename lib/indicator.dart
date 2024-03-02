import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Indicator extends StatelessWidget {
  Indicator({super.key});

  var controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            height: 168,
            decoration: BoxDecoration(
                color: Color(0xffECFDF3),
                borderRadius: BorderRadius.circular(20)),
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: PageController(),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Positive vibes",
                        style:
                            TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              "Boost your mood with \n positive vibes",
                              style:
                                  TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                            ),
                            Image(image: AssetImage("assets/images/Walking the Dog.png"))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff32D583)),

                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                )),
                          ),
                          Text(
                            "10 mins",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          child: SmoothPageIndicator(
            controller: PageController(),
            count: 3,
            effect: WormEffect(
              activeDotColor: Color(0xff98A2B3),
              dotColor: Color(0xffD9D9D9),
              dotHeight:10,
               dotWidth: 10

            ),
            
          ),
        ),
      ],
    );
  }
}
