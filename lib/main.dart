import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff090C22),
        primaryColor: Color(0xff090C22),
        accentColor: Color(0xffEA1556),
      ),
      home: InputPage(),
    );
  }
}
