import 'package:flutter/material.dart';

class btn extends StatelessWidget {
  
  String? text;
  void Function()? onPressed;
  btn(this.onPressed, this.text);
  Widget build(BuildContext) {
    return Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.orange,
            borderRadius: BorderRadius.circular(5)),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
          ),
          child:
              Text(text!, style: TextStyle(color: Colors.black, fontSize: 20)),
        ));
  }
}
