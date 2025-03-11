import 'package:flutter/material.dart';
import 'package:flutter_application_1/Lec%205/Task%202/components/container_custom.dart';
import 'package:flutter_application_1/Lec%205/Task%202/screens/ColorScreen.dart';
import 'package:flutter_application_1/Lec%205/Task%202/screens/FamilyScreen.dart';
import 'package:flutter_application_1/Lec%205/Task%202/screens/NumbersPage.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language App'),
        backgroundColor: const Color.fromARGB(203, 101, 56, 14),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            child: Category('Nubmers', const Color.fromARGB(255, 193, 179, 49)),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Familyscreen();
              }));
            },
            child: Category('Family Members', Colors.green),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Colorscreen();
              }));
            },
            child: Category('Colors', Colors.purple),
          ),
        ],
      ),
    );
  }
}
