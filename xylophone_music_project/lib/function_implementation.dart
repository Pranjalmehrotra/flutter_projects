//Method 2 ---->Using any sort of functions.

// There are 2 functions that has been used ----> 1. noteIncrement  2.buildContainer

import 'package:audioplayers/src/audio_cache.dart';
import 'package:flutter/material.dart';

class FunctionXylophoneApp extends StatelessWidget {
  @override

  // Function is used to increase the number of note----->Return type is void

  void noteIncrement(int number) {
    final player = AudioCache();
    player.load('note$number.wav');
  }

  // Function is used to return the container type of the Widget------>Return type is Widget.

  // Always follow the named argument signature of the function.
  Widget buildContainer({Color color, int number}) {
    noteIncrement(number);
    return Container(
      color: color,

      ///Format of the TextButton------->Always follow this.
      child: TextButton(
        onPressed: () {
          noteIncrement(number);
        },
        child: Text('Click Me Note$number'),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Always try to add the body of the code under the SafeArea.

        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                buildContainer(color: Colors.red, number: 1),
                buildContainer(color: Colors.orange, number: 2),
                buildContainer(color: Colors.yellow, number: 3),
                buildContainer(color: Colors.green, number: 4),
                buildContainer(color: Colors.blue, number: 5),
                buildContainer(color: Colors.indigo, number: 6),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
