import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {super.key,
      required this.number,
      required this.color,
      this.height,
      this.width});
  final String number;
  final color;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 0.1,
                blurRadius: 8,
                offset: Offset(0, 1), // Offset in x and y direction
              ),
            ], borderRadius: BorderRadius.circular(10), color: color),
            child: Center(
                child: Text(
              number,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            )),
          ),
        ),
      ),
    );
  }
}
