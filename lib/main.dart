import 'package:calculator/Screens/calculator.dart';
import 'package:calculator/Screens/splash_screen.dart';
import 'package:calculator/widgets/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
