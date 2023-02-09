
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2_example/second_page.dart';
import 'package:getx2_example/student_controller.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  var student = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetMaterialApp(
      home: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,

          child: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(student.name.value , style: TextStyle(fontSize: 30),),
              Text(student.age.value.toString() ,style: TextStyle(fontSize:30),),

              ElevatedButton(onPressed: (){
                student.name.value = "reza";
              }, child: Text("change name")),


              ElevatedButton(onPressed: (){
                Get.to(SecondPage());
              }, child: Text("second page")),


              ElevatedButton(onPressed: (){

                student.increment();
              }, child: Text("increment")),



              GetX<StudentController>(

                builder: (student){
                  return Text(student.count.toString() , style: TextStyle(color: Colors.red , fontSize: 30),);
                },
              ),

              Obx(() => Text(student.count.toString() , style: TextStyle(color: Colors.red , fontSize: 30)))





            ],
          )),
        ),
      ),
    );
  }
}
