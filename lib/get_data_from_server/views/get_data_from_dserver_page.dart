import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2_example/get_data_from_server/controllers/data_controller.dart';

class GetDataFromServer extends StatelessWidget {
  GetDataFromServer({Key? key}) : super(key: key);

  final controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetMaterialApp(
      home: SafeArea(
        child: Scaffold(
          // body: Container(
          //   width: size.width,
          //   height: size.height,
          //   color: Colors.blueGrey,
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       Expanded(
          //         child: Obx(() {
          //           return controller.isLoading.value
          //               ? const Center(child: CircularProgressIndicator(color: Colors.white,),)
          //               : ListView.builder(
          //                   itemCount: controller.dataList.length,
          //                   itemBuilder: (context, index) {
          //                     return Container(
          //                       width: size.width,
          //                       height: 50,
          //                       margin: const EdgeInsets.all(10),
          //                       color: Colors.red.withOpacity(0.5),
          //
          //                       child: Center(child: Text(controller.dataList[index].name),),
          //                     );
          //                   });
          //         }),
          //       ),
          //
          //       ElevatedButton(onPressed: (){
          //          controller.getList();
          //       }, child: Text("refresh list",style: TextStyle(fontSize: 30),)),
          //
          //       ElevatedButton(onPressed: (){
          //          controller.removeAliFromList();
          //       }, child: Text("remove ali from list" ,style: TextStyle(fontSize: 30),)),],
          //
          //
          //     ElevatedButton(onPressed: (){
          //       controller.changeBackgroundColor();
          //     }, child: Text("change background color" ,style: TextStyle(fontSize: 30),)),],
          //
          //
          //   ),
          // ),


          body: Obx((){
            return Container(

                width: size.width,
                height: size.height,
                color: controller.bkGreen.value ?Colors.green :Colors.blueGrey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child:  controller.isLoading.value
                            ? const Center(child: CircularProgressIndicator(color: Colors.white,),)
                            : ListView.builder(
                                itemCount: controller.dataList.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    width: size.width,
                                    height: 50,
                                    margin: const EdgeInsets.all(10),
                                    color: Colors.red.withOpacity(0.5),

                                    child: Center(child: Text(controller.dataList[index].name),),
                                  );
                                })

                    ),

                    ElevatedButton(onPressed: (){
                       controller.getList();
                       
                    }, child: Text("refresh list",style: TextStyle(fontSize: 30),)),

                    ElevatedButton(onPressed: (){
                       controller.removeAliFromList();
                    }, child: Text("remove ali from list" ,style: TextStyle(fontSize: 30),)),

                  ElevatedButton(onPressed: (){
                    controller.changeBackgroundColor();
                  }, child: Text("change background color" ,style: TextStyle(fontSize: 30),)),],


                ),


            );
          }





        ),
      ),
    ));
  }
}
