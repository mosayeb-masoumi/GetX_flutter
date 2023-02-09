import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2_example/student_controller.dart';

class SecondPage extends StatelessWidget with ChangeNotifier{
  SecondPage({Key? key}) : super(key: key);


  var student = Get.put(StudentController());
  // var student = Get.find<StudentController>();


  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      width: size.width,
      height: size.height,

      child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Obx(() => Text(student.name.value, style: TextStyle(fontSize: 30))),
               // or

              GetX<StudentController>(
                builder: (controller){
                  return Text(controller.name.value, style: TextStyle(fontSize: 30));
                },
              ),


              ElevatedButton(
                  onPressed: () {
                    student.name.value = "hassan";
                  },
                  child: Text("change name")),
            ],
          ),

    ));
  }
}
