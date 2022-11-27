///The screen problem for this solution is given in the images folder
/// image name --> Layout-Challenge-Specs.png
/// This is just for the practise purpose included.Not a part of the project
import 'package:flutter/material.dart';

/*void main() {
  runApp(const MyApp());
}*/

/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WidgetChallenge(),
    );
  }
}*/

class LayoutChallengeSolution extends StatelessWidget {
  const LayoutChallengeSolution({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.red,
                  width: 100,
                ),
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                  ],
                )),
                Container(
                  color: Colors.blue,
                  width: 100,
                ),
              ],
            )),
      ),
    );
  }
}
