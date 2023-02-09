import 'package:get/get.dart';
import 'package:getx2_example/get_data_from_server/models/data_model.dart';
import 'package:getx2_example/get_data_from_server/repositories/data_repository.dart';
class DataController extends GetxController{

  var isLoading = true.obs;
  var dataList = <DataModel>[].obs;

  var bkGreen = false.obs;

  @override
  void onInit() {
    getList();
    super.onInit();
  }

  void getList() async {
    isLoading.value = true;

    var list = await DataRepository().getList();

    isLoading.value = false;
    dataList.value = list;
    bkGreen.value = false;
  }

  void removeAliFromList(){
    // dataList.value = dataList.value.removeWhere((item) => item.name == 'ali');
    dataList.removeWhere((item) => item.name == "ali");
  }

  void changeBackgroundColor() {
    bkGreen.value = true;
  }

}