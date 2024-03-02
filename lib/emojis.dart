import 'package:flutter/material.dart';

class Emojis extends StatelessWidget {
   Emojis({super.key,required this.path,required this.text});
  String path;
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(child: Image(image: AssetImage(path))),
            Text(text,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14)),
          ],

        )
      ],
    );
  }
}
