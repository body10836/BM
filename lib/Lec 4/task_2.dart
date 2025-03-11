import 'package:flutter/material.dart';
void main() {
  runApp(Task2());
}
class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Traffic Lights',
            style: TextStyle(
                color: Colors.green, fontSize: 30, fontWeight: FontWeight.bold),
          )),
      body: Center(
        child: Container(
        width: 200,
        height: 300,
        color: Colors.black,
        child: Center(
          child: Column(
            children: [
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: Center(child: Text('Red'))),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  child: Center(child: Text('Yellow'))),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  child: Center(child: Text('Green'))),
            ],
          ),
        ),
      )),
    ));
  }
}
