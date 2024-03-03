import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  CustomBottomNavigationBar(
      {super.key,
      this.icon1,
      this.label1,
      this.label2,
      this.label3,
      this.label4,
      this.icon2,
      this.icon3,
      this.icon4,

      });

  Widget? icon1,icon2,icon3,icon4;
  String? label1,label2,label3,label4;
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor:Color(0xff667085) ,
        unselectedItemColor: const Color(0xff667085),
        items: [
          BottomNavigationBarItem(
            icon: widget.icon1!,
            label: widget.label1!,
          ),
          BottomNavigationBarItem(
            icon: widget.icon2!,
            label: widget.label2!,
          ),
          BottomNavigationBarItem(
            icon: widget.icon3!,
            label: widget.label3!,
          ),
          BottomNavigationBarItem(
            icon: widget.icon4!,
            label: widget.label4,
          ),
        ]);
  }
}
