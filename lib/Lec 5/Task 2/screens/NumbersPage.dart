import 'package:flutter/material.dart';
import 'package:flutter_application_1/Lec 5/Task 2/components/numberContainer.dart';
import 'package:flutter_application_1/Lec%205/Task%202/modules/number_module.dart';

class NumbersPage extends StatelessWidget {
  List<Number> numbers = [Number(
    image: 'assets/images/numbers/number_one.png',
    enName: 'One',
    jpName: 'Ichi',
  ),
    Number(
      image: 'assets/images/numbers/number_two.png',
      enName: 'Two',
      jpName: 'Ni',
    ),
    Number(
      image: 'assets/images/numbers/number_three.png',
      enName: 'Three',
      jpName: 'San',
    ),
    Number(
      image: 'assets/images/numbers/number_four.png',
      enName: 'Four',
      jpName: 'Shi',
    ),
    Number(
      image: 'assets/images/numbers/number_five.png',
      enName: 'Five',
      jpName: 'Go',
    ),
    Number(
      image: 'assets/images/numbers/number_six.png',
      enName: 'Six',
      jpName: 'Roku',
    ),
    Number(
      image: 'assets/images/numbers/number_seven.png',
      enName: 'Seven',
      jpName: 'Shichi',
    ),
    Number(
      image: 'assets/images/numbers/number_eight.png',
      enName: 'Eight',
      jpName: 'Hachi',
    ),
    Number(
      image: 'assets/images/numbers/number_nine.png',
      enName: 'Nine',
      jpName: 'Kyū',
    ),
    Number(
      image: 'assets/images/numbers/number_ten.png',
      enName: 'Ten',
      jpName: 'Ten',
    ),

  ];
  NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Numbers',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView(
        children: [ Column(
          children: [
            Numbercontainer(
              number:numbers[0]
            ),
            Numbercontainer(
                number:numbers[1]
            ),
            Numbercontainer(
                number:numbers[2]
            ),
            Numbercontainer(
                number:numbers[3]
            ),
            Numbercontainer(
                number:numbers[4]
            ),
            Numbercontainer(
                number:numbers[5]
            ),
            Numbercontainer(number: numbers[6]),
            Numbercontainer(number: numbers[7]),
            Numbercontainer(number: numbers[8]),
            Numbercontainer(number: numbers[9])
          ],
        ),
        ]
      ),
    );
  }
}
