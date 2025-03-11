
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/module/bmi_logic.dart';
import 'package:flutter_application_1/screens/result.dart';
import 'package:flutter_application_1/widgets/calculate.dart';
import 'package:flutter_application_1/widgets/custom.dart';
import 'package:flutter_application_1/widgets/gender.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double val = 100;
  int wheight = 60;
  int age = 26;

  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Color(0xFF1C2135),
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF24263B),
      ),
      body: Column(
        children: [
          // Male And Female Container
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 60, right: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Gender(
                  gender: 'Male',
                  image: 'assets/male.png',
                  value: Color(0xFF24263B),
                ),
                Gender(
                  gender: 'Female',
                  image: 'assets/female.png',
                  value: Color(0xFF333244),
                )
              ],
            ),
          ),


          // Slider And The Height
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Text(
              'Height',
              style: TextStyle(fontSize: 20, color: Color(0xFF8B8C9E)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${val.toInt()}',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'cm',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ), 
          Slider(
              min: 100,
              max: 200,
              activeColor: Color(0xFFE83D67),
              value: val.roundToDouble(),
              onChanged: (newval) {
                setState(() {
                  val = newval;
                });
              }),



              
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60, top: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Custom(
                    type: 'Weight',
                    text_num: '${wheight}',
                    value: Color(0xFF24263B),
                    increament: () {
                      setState(() {
                        wheight++;
                      });
                    },
                    decreament: () {
                      setState(() {
                        wheight--;
                      });
                    }),
                Custom(
                    type: 'Age',
                    text_num: '$age',
                    increament: () {
                      setState(() {
                        age++;
                      });
                    },
                    value: Color(0xFF333244),
                    decreament: () {
                      setState(() {
                        age--;
                      });
                    })
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Calculate(
              nav: () {
                
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return result(
                    bmi: BmiLogic.getBMI(wheight,val),
                  );
                }));
              },
            ),
          )
        ],
      ),
    );
  }
}
