import 'dart:async';

import 'package:calculator/Screens/calculator.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => CalculatorScreen()));
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[200],
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .5,
              child: Image.asset(
                "asset/images/Splash_screen_calculator.png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Calculator",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.05,
                  fontWeight: FontWeight.bold),
            )
          ],
        )),
      ),
    );
  }
}
