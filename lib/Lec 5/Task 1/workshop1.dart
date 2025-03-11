
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Lec%205/Task%201/components/btn.dart';

void main(){
  runApp(firstApp());


}

class firstApp extends StatefulWidget{
  const firstApp({super.key});

  @override
  State<firstApp> createState() => _firstAppState();
}

class _firstAppState extends State<firstApp> {
  int counter=0;
  int counter1=0;
  @override
  Widget build(BuildContext){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter',style: TextStyle(
            color: Colors.white,
          ),),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///////// Team A //////
                Column(
                  children: <Widget>[
                    Text('Team A',style: TextStyle(
                      fontSize: 30,
                    ),),
                    Text('$counter1',style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold
                    ),),

                    btn((){
                      setState(() {
                        counter1+=1;
                      });
                    },'Add 1 Point'),

                    SizedBox(height: 20),

                    btn((){
                      setState(() {
                        counter1+=2;
                      });
                    },'Add 2 Points'),

                    SizedBox(height: 20,),

                    btn((){
                      setState(() {
                        counter1+=3;
                      });
                    },'Add 3 Points'),
                  ],
                ),


                ///////// Team B //////
                Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Column(
                    children: [
                      Text('Team B',style: TextStyle(
                        fontSize: 30,
                      ),),
                      Text('$counter',style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold
                      ),),


                      btn((){
                        setState(() {
                          counter+=1;
                        });
                      },'Add 1 Point'),
                      SizedBox(height: 20,),

                  btn((){
                    setState(() {
                      counter+=2;
                    });
                  },'Add 2 Points'),
                      SizedBox(height: 20,),

                      btn((){
                        setState(() {
                          counter+=3;
                        });
                      },'Add 3 Points'),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 50),
            btn((){
              setState(() {
                counter=0;
                counter1=0;
              });
            },'Reset'),
          ],
        ),
      ),
    );
  }
}