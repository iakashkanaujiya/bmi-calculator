import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BmiCalculator());

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF8F8FF),
        fontFamily: "Circular",
      ),
      debugShowCheckedModeBanner: false,
      home: BmiApp(),
    );
  }
}

