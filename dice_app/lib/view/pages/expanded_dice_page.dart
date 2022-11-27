///Method 2 --> Displaying Images in the Screen Using Expanded Widget
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Dicee',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 29,
              ),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: const ExpandedDicePage(),
      ),
    ),
  );
}

class ExpandedDicePage extends StatefulWidget {
  const ExpandedDicePage({Key? key}) : super(key: key);

  @override
  State<ExpandedDicePage> createState() => _ExpandedDicePageState();
}

class _ExpandedDicePageState extends State<ExpandedDicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  /// In this we have called setState() and called the leftDiceNumber and rightDiceNumber so that
  /// simultaneously, we can change both the dices by clicking on one dice only.

  void diceReload() {
    setState(
      () {
        /// 1 has been added so that number will be generated from 1 not from 0
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 3,
              child: TextButton(
                onPressed: () {
                  diceReload();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              flex: 3,
              child: TextButton(
                onPressed: () {
                  diceReload();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
