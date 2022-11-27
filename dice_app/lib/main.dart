//  Method 1.Using the Container Widget for the Image Asset.

import 'package:dice_app/util/utilities.dart';
import 'package:flutter/material.dart';

import 'view/pages/expanded_dice_page.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: kMainBackgroundColor,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Dicee',
              textAlign: TextAlign.center,
              style: kMainTextStyle,
            ),
          ),
        ),

        ///This is for redirecting to the ExpandedDicePage class present in the pages(expanded_dice_page.dart)
        body: const ExpandedDicePage(),

        ///This is for redirecting to the ContainerDicePage class present in the pages(container_dice_page.dart)
        //body: const ContainerDicePage(),
      ),
    ),
  );
}
