//Method 1 ---->Without using any sort of functions.

import 'package:audioplayers/src/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // This is used to redirect the flow  to the XylophoneApp() class present in the main.dart file,

      home: XylophoneApp(),

      /// This is used to redirect the flow  to the FunctionXylophoneApp() class present in the function_implementation.dart file,
      //home: FunctionXylophoneApp(),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Always try to add the body of the code under the SafeArea.

        body: SafeArea(
          child: Center(
            // Format of the TextButton------->Always follow this.
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.load('note1.wav');
                    },
                    child: Text('Click Me Note1'),
                  ),
                ),
                Container(
                  color: Colors.orange,
                  child: TextButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.load('note2.wav');
                    },
                    child: Text('Click Me Note2'),
                  ),
                ),
                Container(
                  color: Colors.yellow,
                  child: TextButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.load('note3.wav');
                    },
                    child: Text('Click Me Note3'),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.load('note4.wav');
                    },
                    child: Text('Click Me Note4'),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: TextButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.load('note5.wav');
                    },
                    child: Text('Click Me Note5'),
                  ),
                ),
                Container(
                  color: Colors.indigo,
                  child: TextButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.load('note6.wav');
                    },
                    child: Text('Click Me Note6'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
