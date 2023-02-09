
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2_example/getx_service/myservice.dart';
import 'package:getx2_example/second_page.dart';

class GetxServicePage extends StatelessWidget {
   GetxServicePage({Key? key}) : super(key: key);

  /// Service will be alive while app in runnig no matter to go to another page.
  var myService = Get.put(MyService());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetMaterialApp(
      home: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(onPressed: (){
                 myService.startTimer();
              }, child: Text("start service during the time that app is running")),


              ElevatedButton(onPressed: (){
                Get.to(SecondPage());
              }, child: Text("secont test class")),
            ],
          ),
        ) ,
      ),
    );
  }
}
