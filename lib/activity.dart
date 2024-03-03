import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 326,
          color: const Color(0xffE4E7EC),
          padding: const EdgeInsets.all(18),
          margin: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

               ElevatedButton(
                 style:
                     ElevatedButton.styleFrom(backgroundColor: Colors.white),
                 onPressed: () {},
                 child: const Text(
                   "7 days",
                 ),
               ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Morning Yoga",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Image(image: AssetImage("assets/images/[removal 2.png"),height: 50,),

                    ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Improve mental focus.",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.access_alarm_sharp,
                    size: 15,
                  ),
                  Text(
                    "30 mins",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 326,
          color: const Color(0xffE4E7EC),
          padding: const EdgeInsets.all(18),
          margin: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ElevatedButton(
                style:
                ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                child: const Text(
                  "3 days",
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Plank Exercise",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Image(image: AssetImage("assets/images/pngwing 1.png"),height: 50,),

                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Improve posture and stability.",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.access_alarm_sharp,
                    size: 15,
                  ),
                  Text(
                    "30 mins",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 326,
          color: const Color(0xffE4E7EC),
          padding: const EdgeInsets.all(18),
          margin: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ElevatedButton(
                style:
                ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                child: const Text(
                  "7 days",
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Morning Yoga",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Image(image: AssetImage("assets/images/[removal 2.png"),height: 50,),

                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Improve mental focus.",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.access_alarm_sharp,
                    size: 15,
                  ),
                  Text(
                    "30 mins",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
