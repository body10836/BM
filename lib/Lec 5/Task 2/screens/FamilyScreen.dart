import 'package:flutter/material.dart';

import 'package:flutter_application_1/Lec%205/Task%202/components/familyContainer.dart';
import 'package:flutter_application_1/Lec%205/Task%202/modules/members.dart';


class Familyscreen extends StatelessWidget {
  List<Members> members = [
    Members(
      image: 'assets/images/family/family_father.png',
      enName: 'Father',
      jpName: 'Chichi',
    ),
    Members(
      image: 'assets/images/family/family_mother.png',
      enName: 'Mother',
      jpName: 'Haha',
      
    ),
    Members(
      image: 'assets/images/family/family_son.png',
      enName: 'Son',
      jpName: 'Musuko',
    ),
    Members(
      image: 'assets/images/family/family_daughter.png',
      enName: 'Daughter',
      jpName: 'Musume',
    ),
    Members(
      image: 'assets/images/family/family_grandfather.png',
      enName: 'Grandfather',
      jpName: 'Ojīsan',
    ),
    Members(
      image: 'assets/images/family/family_grandmother.png',
      enName: 'Grandmother',
      jpName: 'Obāsan',
    ),
    Members(
      image: 'assets/images/family/family_older_brother.png',
      enName: 'Older Brother',
      jpName: 'Ani',
    ),
    Members(
      image: 'assets/images/family/family_older_sister.png',
      enName: 'Older Sister',
      jpName: 'Ane',
    ),
    Members(
      image: 'assets/images/family/family_younger_brother.png',
      enName: 'Younger Brother',
      jpName: 'Otōto',
    ),
    Members(
      image: 'assets/images/family/family_younger_sister.png',
      enName: 'Younger Sister',
      jpName: 'Imōto',
    ),

    

  ];
  Familyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Family Members',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView(children: [
        Column(
          children: [
            Familycontainer(member: members[0]),
            Familycontainer(member: members[1]),
            Familycontainer(member: members[2]),
            Familycontainer(member: members[3]),
            Familycontainer(member: members[4]),
            Familycontainer(member: members[5]),
            Familycontainer(member: members[6]),
            Familycontainer(member: members[7]),
            Familycontainer(member: members[8]),
            Familycontainer(member: members[9]),
          ],
        ),
      ]),
    );
  }
}
