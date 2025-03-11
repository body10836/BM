import 'package:flutter/material.dart';
import 'package:flutter_application_1/Lec%205/Task%202/modules/color.dart';

class Colorcontainer extends StatelessWidget {
  final Color_f color;
  Colorcontainer({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.purple,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset('${color.image}'),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${color.jpName}',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Text(
                '${color.enName}',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ],
          ),
          Spacer(),
          Center(
            child: Container(
              child: Icon(Icons.play_arrow),
            ),
          ),
        ],
      ),
    );
  }
}

