import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interlization_getx_flutter/view/Widgets/Buttons/buttons.dart';

import 'messages.dart';
import 'my_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Buttons buttons = Buttons();
  MyController myController = Get.put(MyController());
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),

      ///This is for retrieving the language locally set in the device when the app is started.
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Internalization')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: const TextStyle(fontSize: 20, color: Colors.amberAccent),
              ),
              buttons.ResuableElevatedButton(
                  countryLanguage: 'hi', text: 'Hindi', countryCode: 'IN'),
              const SizedBox(
                height: 10,
              ),
              buttons.ResuableElevatedButton(
                  countryLanguage: 'fr', text: 'French', countryCode: 'FR'),
              const SizedBox(
                height: 10,
              ),
              buttons.ResuableElevatedButton(
                  countryLanguage: 'en', text: 'English', countryCode: 'US'),
            ],
          ),
        ),
      ),
    );
  }
}
