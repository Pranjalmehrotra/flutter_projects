import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../my_controller.dart';

class Buttons extends StatelessWidget {
  Buttons({super.key});
  MyController myController = Get.put(MyController());

  ElevatedButton ResuableElevatedButton({
    required String countryLanguage,
    required String text,
    required String countryCode,
  }) {
    return ElevatedButton(
        onPressed: () {
          myController.changeLanguage(
              countryLanguage: countryLanguage, countryCode: countryCode);
        },
        child: Text(text));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
