import 'package:flutter/material.dart';

void main() {
  
  
  runApp(clock());
  
}

class clock extends StatefulWidget {
  const clock({super.key});

  @override
  State<clock> createState() => _clockState();
}

class _clockState extends State<clock> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clock'),
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 300,
            height: 150,
            child: Center(

              child:Text('${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}',style: TextStyle(color: Colors.white,fontSize: 50),),
            ),
          ),
        ),
      ),
    );
  }
}
