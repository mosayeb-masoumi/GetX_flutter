import 'package:get/get.dart';

class StudentController extends GetxController{

  var name = "tome".obs;
  var age = 25.obs;

  var count = 0.obs;
  void increment(){
    count++;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}