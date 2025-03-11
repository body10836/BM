import 'package:flutter/material.dart';
import 'package:flutter_application_1/Lec%206/Task%201/screens/home_screen.dart';

class result extends StatefulWidget {
  result({super.key, required this.bmi});
  final double bmi;

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  String getStatus() {
    if (widget.bmi < 18.5) {
      return 'Underweight';
    }
    if (widget.bmi > 25) {
      return 'Overweight';
    } else {
      return 'Normal';
    }
  }

  Widget build(BuildContext) {
    return MaterialApp(
        home: Scaffold(
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
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 200),
            child: Container(
              child: Text(
                'Your Result',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 390,
                height: 600,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF333244)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Text(
                        getStatus(),
                        style: TextStyle(
                            color: Color(0xFF21BF73),
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        widget.bmi.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 70),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Text(
                        'You Have a ${getStatus()} Body Weight',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8B8C9E)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: HomeScreen(),
                    
                  );
                }));
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100,
                color: Color(0xFFE83D67),
                child: Text(
                  'Re - Calculate',
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
