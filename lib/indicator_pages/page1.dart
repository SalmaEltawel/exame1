import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Positive vibes",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 16),
        ),
        const SizedBox(
          height: 15,
        ),
        const Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Boost your mood with \n positive vibes",
                style: TextStyle(
                    fontWeight: FontWeight.w400, fontSize: 16),
              ),
              Image(
                image: AssetImage(
                    "assets/images/Walking the Dog.png"),
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff32D583)),
              height: 30,
              width: 30,
              child: const Icon(
                Icons.play_arrow,
                size: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              "10 mins",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 14),
            )
          ],
        ),
      ],
    );
  }
}
