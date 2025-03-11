import 'package:flutter/material.dart';

void main() {
  runApp(idMaker());
}

class idMaker extends StatelessWidget {
  const idMaker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Modern Id Card'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 100,
            color: Colors.lightBlue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(
                        height: 40,
                        image: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/256/18828/18828672.png'))
                  ],
                ),
                Text('Name: Abdelrahman'),
                Text('Job Title: Student'),
                Text('Phone Number: 0112320****'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
