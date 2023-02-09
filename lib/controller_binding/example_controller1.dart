import 'package:get/get.dart';
class ExampleController1 extends GetxController{


  var myList =  <String>[].obs;

  var name = "".obs;
  void getText1(){
    name.value = "reza";
  }
}