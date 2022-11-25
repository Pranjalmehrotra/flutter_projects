// The screen problem for this solution is given in the images folder
// File name ---->layout_challenge_solutions.dart
// Screenshot---->images/Layout-Challenge-Specs.png

//In this, file, we have implemented using the Container widget

import 'package:flutter/material.dart';
import 'package:mi_card/view/pages/list_tile_widget_challenge.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      ///This is for redirecting to the WidgetChallenge Class present in the main.dart
      //home: WidgetChallenge(),

      ///This is for redirecting to the ListTileWidgetChallenge Class present in the second_method_ui_implementation.dart

      home: ListTileWidgetChallenge(),
    );
  }
}

class WidgetChallenge extends StatelessWidget {
  const WidgetChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                child: Image(
                  image: AssetImage('images/Passport pic.jpg'),
                ),
              ),
              Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'Pranjal Mehrotra',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'Pacifico',
                      letterSpacing: 1.5,
                    ),
                  )),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    letterSpacing: 1.5,
                  ),
                ),
              ),

              /// This Divider is used to bring the line in between the FLUTTER DEVELOPER AND 7355969644

              const SizedBox(
                width: 300,
                child: Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ),
              Container(
                color: Colors.white,
                //width: 360,
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(10),
                //margin: const EdgeInsets.only(left: 0, right: 0, top: 15),
                child: Row(
                  children: const [
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                      //size: 30,
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      '7355969644',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //padding: EdgeInsets.all(10),
                color: Colors.white,
                margin: const EdgeInsets.all(15),
                padding: EdgeInsets.all(10),

                child: Row(
                  children: const [
                    Icon(
                      Icons.email,
                      color: Colors.teal,
                      size: 30,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'pranjalmehrotra213@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
