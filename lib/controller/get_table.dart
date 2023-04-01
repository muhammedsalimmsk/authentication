import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../api data/api_key.dart';
import '../models/data_model/data_model.dart';


class TableDataController extends GetxController {
  Future<DataModel> fetchData() async {
    final response = await http
        .get(Uri.parse(ledgerApiUrl), headers: {"Authorization": "$token"});
    if (response.statusCode == 200) {
      print("get method success");
      var dataModel = DataModel.fromJson(jsonDecode(response.body));
      print(dataModel);
      return dataModel;
    } else {
      print(token);
      throw Exception("Error to get data");
    }
  }
}
