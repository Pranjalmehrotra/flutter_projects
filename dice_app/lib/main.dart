//  Method 1.Using the Container Widget for the Image Asset.

import 'package:flutter/material.dart';

import 'Method2_Expanded_Widget.dart';

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
        //body: const ContainerDicePage(),
      ),
    ),
  );
}

class ContainerDicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          alignment: Alignment.centerRight,
          width: 150,
          child: const Image(
              image: AssetImage(
            'images/dice1.png',
          )),
        ),
        Container(
          alignment: Alignment.centerRight,
          width: 150,
          child: const Image(
            image: AssetImage('images/dice2.png'),
          ),
        ),
      ],
    );
  }
}
