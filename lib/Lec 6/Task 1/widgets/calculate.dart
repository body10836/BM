import 'package:flutter/material.dart';

class Calculate extends StatelessWidget {
  GestureTapCallback? nav;
  Calculate({super.key, required this.nav});
  Widget build(BuildContext) {
    return InkWell(
      onTap: nav,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 100,
        color: Color(0xFFE83D67),
        child: Text(
          'Calculate',
          style: TextStyle(
              fontSize: 32, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
