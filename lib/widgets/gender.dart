import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  String? image;
  String? gender;
  Color? value;
  Gender({super.key, required this.gender, required this.image,required this.value});
  Widget build(BuildContext) {
    return Container(
      width: 155,
      height: 180,
      decoration: BoxDecoration(
          color: value, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Image.asset(
            image!,
            width: 144,
            height: 144,
          ),
          Text(
            gender!,
            style: TextStyle(fontSize: 20, color: Color(0xFF8B8C9E)),
          )
        ],
      ),
    );
  }
}
