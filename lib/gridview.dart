import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
   CustomGridView({super.key});
  List<String>imagePath=[
    "assets/images/relaxiation.png",
    "assets/images/meditation.png",
    "assets/images/breathing.png",
    "assets/images/youga.png",

  ];
   List<String>text=[
     "relaxiation",
     "meditation",
     "breathing",
     "youga",

   ];
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: GridView.builder(gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 150,mainAxisSpacing: 5),itemCount: 4,

        scrollDirection: Axis.vertical,
       // padding: EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Color(0xffFDF2FA),
              height: 20,
              width: 20,
              child: Row(
                children: [
                Image(image: AssetImage(imagePath[index])),
                  Text(text[index],),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
