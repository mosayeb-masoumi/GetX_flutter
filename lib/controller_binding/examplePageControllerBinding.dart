import 'package:get/get.dart';
import 'package:getx2_example/controller_binding/example_controller1.dart';
import 'package:getx2_example/controller_binding/example_controller2.dart';
class ExamplePageControllerBinding implements Bindings{

  @override
  void dependencies() {
       Get.lazyPut(() => ExampleController1());
       Get.lazyPut(() => ExampleController2());
  }

}