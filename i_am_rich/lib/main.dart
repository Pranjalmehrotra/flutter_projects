import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
            // This Network image is used when we try to implement the picture from the internet
/*
          child: Image(
            image: NetworkImage(
                'https://previews.123rf.com/images/naphotos/naphotos1201/naphotos120100082/11825706-blue-diamond.jpg?fj=1'),
          ),
*/
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 120,
                height: 120,
                child: const Image(
                  image: AssetImage('images/diamond (1).png'),
                ),
              ),
              Container(
                width: 120,
                height: 120,
                child: const Image(
                  image: AssetImage('images/i_am_rich_app_icon.png'),
                ),
              ),
            ],
          ),
        )),
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: const Center(
            child: Text('I am Rich'),
          ),
        ),
      ),
    ),
  );
}
