import 'package:flutter/material.dart';
import 'package:portfolio/landingpage.dart';
import 'package:portfolio/page1.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
     //home: Page1(),
    );
  }
}