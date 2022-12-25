import 'package:get/get.dart';

class Messages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {'hello': 'HELLO'},
        'hi_IN': {'hello': 'Namaste'},
        'fr_FR': {'hello': 'Bonjour'},
      };
}
