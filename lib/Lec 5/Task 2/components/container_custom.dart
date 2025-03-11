import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String? categoery;
  Color? color;
  
  Category(this.categoery, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 13.5),
      width: double.infinity,
      height: 90,
      color: color,
      alignment: Alignment.centerLeft,
      child: Text(categoery!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
    );
  }
}
