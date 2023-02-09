import 'dart:ui';

import 'package:get/get.dart';

class TrController extends GetxController{

  void changeLanguages(var languageCode , var countryCode){
     var locale = Locale(languageCode , countryCode);
     Get.updateLocale(locale);
  }
}