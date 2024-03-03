import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  CustomGridView({super.key});

  List<String> imagePath = [
    "assets/images/relaxiation.png",
    "assets/images/meditation.png",
    "assets/images/breathing.png",
    "assets/images/youga.png",
  ];
  List<String> text = [
    "relaxiation",
    "meditation",
    "breathing",
    "youga",
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 24, mainAxisSpacing: 20,childAspectRatio: 2/1,
          mainAxisExtent: 56
        ),
        itemCount: 4,
        padding: EdgeInsets.all(8),
        scrollDirection: Axis.vertical,
        // padding: EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(10)
              ,color: const Color(0xffFDF2FA),),

            height: 20,
            width: 20,
            child: Row(
              children: [
                Image(image: AssetImage(imagePath[index])),
                const SizedBox(width: 10,),
                Text(
                  text[index],
                ),

              ],
            ),
          );
        });
  }
}
