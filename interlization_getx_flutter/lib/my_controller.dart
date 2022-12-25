import 'dart:ui';

import 'package:get/get.dart';

class MyController extends GetxController {
  void changeLanguage({var countryLanguage, var countryCode}) {
    var locale = Locale(countryLanguage, countryCode);
    Get.updateLocale(locale);
  }
}
