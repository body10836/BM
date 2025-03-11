import 'package:flutter/material.dart';
import 'package:flutter_application_1/Lec%205/Task%202/screens/homeScreen.dart';


void main() {
  runApp(secondApp());
}

class secondApp extends StatefulWidget {
  const secondApp({super.key});

  @override
  State<secondApp> createState() => _secondAppState();
}

class _secondAppState extends State<secondApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
    );
  }
}
