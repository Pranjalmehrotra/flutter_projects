///Method 1 --> Displaying Images in the Screen Using Container Widget
import 'package:flutter/material.dart';

class ContainerDicePage extends StatelessWidget {
  const ContainerDicePage({super.key});

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
