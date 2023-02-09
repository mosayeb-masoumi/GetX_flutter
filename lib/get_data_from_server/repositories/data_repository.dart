import 'package:getx2_example/get_data_from_server/models/data_model.dart';

class DataRepository{

  Future<dynamic> getList() async {

    await Future.delayed(const Duration(seconds: 3));

    List<DataModel> list = [
      DataModel("hassan", 10),
      DataModel("ali", 12),
      DataModel("reza", 18),
    ];
    return list;
  }
}