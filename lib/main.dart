
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';


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
