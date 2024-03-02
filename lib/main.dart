import 'package:exam/moody_page.dart';
import 'package:exam/tabs/home_tab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MoodyPage.routeName,
      routes: {
        MoodyPage.routeName:(context)=> MoodyPage(),
        HomeTab.routeName:(context)=> HomeTab(),

      }

    );
  }
}
