import 'dart:math';

import 'package:flutter/material.dart';


class busnissContainer extends StatelessWidget {
  dynamic info;
  IconData? iconData;
  busnissContainer({
    super.key,
    required this.info,
    required  this.iconData
  });

  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Icon(iconData!),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            '${info}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    )
        // Container(
        //     child: Row(
        //   children: [
        //     Icon(Icons.email),
        //     Text(
        //       'Email: $email',
        //       style: TextStyle(
        //         fontSize: 20,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ],
        // )),
        // Container(
        //     child: Row(
        //   children: [
        //     Icon(Icons.phone),
        //     Text(
        //       'Phone: $phone',
        //       style: TextStyle(
        //         fontSize: 20,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ],
        // )),
        // Container(
        //     child: Row(
        //   children: [
        //     Icon(Icons.work),
        //     Text(
        //       'Job Title: $job',
        //       style: TextStyle(
        //         fontSize: 20,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ],
        // )),

        );
  }
}
