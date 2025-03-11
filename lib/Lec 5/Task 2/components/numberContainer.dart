import 'package:flutter/material.dart';
import 'package:flutter_application_1/Lec%205/Task%202/modules/number_module.dart';

class Numbercontainer extends StatelessWidget {
  Number number;
  Numbercontainer({required this.number, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        
        children: [
          Container(
            color: Colors.white,
            child: Image.asset('${number.image}'),
          ),
          SizedBox(width: 20,),
          Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text(
                '${number.jpName}',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Text(
              '${number.enName}',
              style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.play_arrow),
          ),
          
        ],
      ),
    );
  }
}
