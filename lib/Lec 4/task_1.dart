import 'package:flutter/material.dart';

void main(){
  runApp(firstTask());
}

class firstTask extends StatelessWidget {
  const firstTask({super.key});

  @override
  Widget build(BuildContext){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('2 Rows'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: Center(child: Text('Amber Color'),),
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.brown,
                child: Center(
                  child: Text('Brown Color'),
                ),
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.pink,
                child: Center(
                  child: Text('Pink Color'),
                ),
              )
            ],
          ), //Row 1
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
                width: 100,
                height: 100,
                color: Colors.deepOrange,
                child: Center(child: Text('Red Color'),),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Center(
                  child: Text('Green Color'),
                ),
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text('Blue Color'),
                ),
              )
          ],) //Row 2
        ],),
      ),
    );
  }
}