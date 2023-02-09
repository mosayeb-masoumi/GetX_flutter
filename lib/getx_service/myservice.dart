import 'dart:async';

import 'package:get/get.dart';

class MyService extends GetxService{


  void startTimer(){
    Timer.periodic(Duration(seconds: 1), (Timer t){
      print("time is ${t.tick}");
    });
  }
}