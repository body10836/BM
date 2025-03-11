import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Custom extends StatelessWidget {
  Custom(
      {super.key,
      required this.type,
      required this.increament,
      required this.text_num,
      required this.decreament,
      required this.value});
  final String type;
  String? text_num;
  GestureTapCallback increament;
  GestureTapCallback decreament;
  Color? value;
  Widget build(BuildContext) {
    return Container(
      width: 155,
      height: 180,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(12), color: value),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              type,
              style: TextStyle(color: Color(0xFF8B8C9E), fontSize: 20),
            ),
          ),
          Text(text_num!,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w700)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 20),
                child: InkWell(
                  onTap: decreament,
                  child: Container(
                    height: 42,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFF8B8C9E),
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.remove,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 20),
                child: InkWell(
                  onTap: increament,
                  child: Container(
                    height: 42,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFF8B8C9E),
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.add_rounded,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
