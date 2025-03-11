import 'package:bmi/screens/home_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  BMI({super.key});

  Widget build(BuildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: HomeScreen(),
    );
  }
}
