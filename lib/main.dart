import 'package:flutter/material.dart';
import 'package:getx2_example/controller_binding/binding_example_page.dart';
import 'package:getx2_example/get_data_from_server/views/get_data_from_dserver_page.dart';
import 'package:getx2_example/getx_service/getx_service_page.dart';
import 'package:getx2_example/home_page.dart';
import 'package:getx2_example/translations/translation_page.dart';

import 'controller_binding/examplePageControllerBinding.dart';

void main() {
  // ExamplePageControllerBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
      // home: TranslationPage(),
      // home: GetxServicePage(),
      // home: BindingExamplePage(),
      home: GetDataFromServer(),
    );
  }
}

