
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2_example/controller_binding/examplePageControllerBinding.dart';
import 'package:getx2_example/controller_binding/example_controller1.dart';
import 'package:getx2_example/controller_binding/example_controller2.dart';

class BindingExamplePage extends StatelessWidget {
  const BindingExamplePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetMaterialApp(
      initialBinding: ExamplePageControllerBinding(),  // or we can define it in mainClass and comment this line
      home: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              ElevatedButton(onPressed: (){
                Get.find<ExampleController1>().getText1();
              }, child: Text("controller 1")),

              Obx(() => Text(Get.find<ExampleController1>().name.value)),

              SizedBox(height: 50,),

              ElevatedButton(onPressed: (){
               Get.find<ExampleController2>().getText2();
              }, child: Text("controller 2")),

              Obx(() => Text(Get.find<ExampleController2>().name.value)),

            ],
          ),
        ),
      ),
    );
  }
}
