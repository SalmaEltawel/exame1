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
            Image(image: AssetImage(path)),
            Text(text,style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 14)),
          ],

        )
      ],
    );
  }
}
