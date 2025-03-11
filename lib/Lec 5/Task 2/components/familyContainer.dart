import 'package:flutter/material.dart';
import 'package:flutter_application_1/Lec%205/Task%202/modules/members.dart';


class Familycontainer extends StatelessWidget {
  Members member;
  Familycontainer({required this.member, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      color: Colors.green,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset('${member.image}'),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                '${member.jpName}',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Text(
              '${member.enName}',
              style: TextStyle(color: Colors.white, fontSize: 30),
              )

            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.play_arrow),
          )
        ],
      ),
    );
  }
}