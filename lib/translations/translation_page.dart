
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2_example/translations/messages.dart';
import 'package:getx2_example/translations/tr_controller.dart';

class TranslationPage extends StatelessWidget {
  TranslationPage({Key? key}) : super(key: key);
  
  var trController = Get.put(TrController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(), // your translations
      locale: Locale("en" ,"US"), //default locale, // to get device locale  Get.deviceLocale
      fallbackLocale: Locale("en" ,"US"), // fallback locale if wrong locale found
      title: "Internationalizaton",
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

                // hello is the key we defined in messages class
              Text("hello".tr ,style: TextStyle(color: Colors.red , fontSize: 25),),
              ElevatedButton(onPressed: (){
                trController.changeLanguages("en", "US");
              }, child: Text("English")),
              ElevatedButton(onPressed: (){
                trController.changeLanguages("ar", "KSA");
              }, child: Text("Arabic")),
              ElevatedButton(onPressed: (){
                trController.changeLanguages("fa", "IR");
              }, child: Text("Persian")),
            ],
          ),
        ),
      ),
    );
  }
}
