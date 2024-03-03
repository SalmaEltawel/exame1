import 'package:exam/indicator_pages/page1.dart';
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
                color: const Color(0xffECFDF3),
                borderRadius: BorderRadius.circular(20)),
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: PageController(),
              children: const [
                Page1(),
                Page1(),

              ],
            ),
          ),
        ),
        SizedBox(
          child: SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const SlideEffect(

                activeDotColor: Color(0xff98A2B3),
                dotColor: Color(0xffD9D9D9),
                dotHeight: 10,
                dotWidth: 10),
            onDotClicked: (index){
            },
          ),
        ),
      ],
    );
  }
}
