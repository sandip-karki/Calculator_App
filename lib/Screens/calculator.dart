import 'package:calculator/page/number_page.dart';
import 'package:calculator/widgets/buttons.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Switch(
                  value: _isSwitched,
                  onChanged: (newValue) {
                    setState(() {
                      _isSwitched = newValue;
                    });
                  },
                ),
                Text(
                  _isSwitched ? "Switch to light mode" : "Switch to dark mode",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 20, top: 40),
                  child: Number_page(),
                ))
          ],
        ),
      ),
    );
  }
}
