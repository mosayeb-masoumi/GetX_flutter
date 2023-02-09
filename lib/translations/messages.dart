import 'package:get/get.dart';

class Messages extends Translations{

  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {

    'en_US': {
      'hello': 'Hello'   // hello is key
    },

    'ar_KSA': {
      'hello': 'اهلا و سهلا مرحبا' // hello is key
    },

    'fa_IR': {
      'hello': 'سلام'  // hello is key
    },

  };

}