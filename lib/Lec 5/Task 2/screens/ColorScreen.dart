import 'package:flutter/material.dart';
import 'package:flutter_application_1/Lec%205/Task%202/components/color_container.dart';
import 'package:flutter_application_1/Lec%205/Task%202/modules/color.dart';

class Colorscreen extends StatelessWidget {
  List<Color_f> colors = [
    Color_f(
      image: 'assets/images/colors/color_red.png',
      enName: 'Red',
      jpName: 'Aka',
    ),
    Color_f(
      image: 'assets/images/colors/color_green.png',
      enName: 'Green',
      jpName: 'Midori',
    ),
    Color_f(
      image: 'assets/images/colors/color_brown.png',
      enName: 'Brown',
      jpName: 'Chairo',
    ),
    Color_f(
      image: 'assets/images/colors/color_gray.png',
      enName: 'Gray',
      jpName: 'Haiiro',
    ),
    Color_f(
      image: 'assets/images/colors/color_black.png',
      enName: 'Black',
      jpName: 'Kuro',
    ),
    Color_f(
      image: 'assets/images/colors/color_white.png',
      enName: 'White',
      jpName: 'Shiro',
    ),
    Color_f(
      image: 'assets/images/colors/yellow.png',
      enName: 'Yellow',
      jpName: 'Kiiro',
    ),
    Color_f(
      image: 'assets/images/colors/color_dusty_yellow.png',
      enName: 'Dusty Yellow',
      jpName: 'Dasutiierō',
    ),
    
  ];

  Colorscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Colorcontainer(color: colors[0]),
              Colorcontainer(color: colors[1]),
              Colorcontainer(color: colors[2]),
              Colorcontainer(color: colors[3]),
              Colorcontainer(color: colors[4]),
              Colorcontainer(color: colors[5]),
              Colorcontainer(color: colors[6]),
              Colorcontainer(color: colors[7]),

            ],
          )
        ],
      ),
    );
  }
}