import 'package:flutter/material.dart';
import 'package:flutter_application_1/Lec%205/Task%203/container.dart';
import 'package:flutter_application_1/Lec%205/Task%203/module.dart';

void main() {
  runApp(Buisnesscard());
}

class Buisnesscard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
              child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber,
                    ),
                    alignment: Alignment.centerLeft,
                    width: 400,
                    height: 252,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/unnamed.png'),
                ),
              ),
              busnissContainer(info: 'Name: ${buisness(name: 'Abdelrhaman Mohamed').name}',iconData: Icons.account_circle,),
              busnissContainer(info: 'Email: ${buisness(email: 'body******@gmail.com').email}',iconData: Icons.email),
              busnissContainer(info: 'Phone: ${buisness(phone: '0112320****').phone}',iconData: Icons.phone),
              busnissContainer(info: 'Job Title: ${buisness(job: 'Flutter Developer').job}',iconData: Icons.work),

                        ]
                    )
                    )
                    ),
            )
      )
      );
   
  }
}
