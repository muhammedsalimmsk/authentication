import 'dart:convert';

import 'package:authentication/controller/get_table.dart';
import 'package:authentication/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import '../api data/api_key.dart';


class LoginController extends GetxController {
 RxBool isLoggedIn = false.obs;
  TableDataController tableDataController = Get.put(TableDataController());

  void login(String email, password) async {
    try {
      var response = await http.post(Uri.parse(apiUrl),
          body: ({"email": email, "password": password}));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        token= data["data"]["accessToken"];
        isLoggedIn.value = true;
        print('Login successfully');
        Get.offAll(HomePage(dataModel:await tableDataController.fetchData()));
      } else {
         Get.snackbar("Error","Error Logging details",
         backgroundColor: Colors.redAccent);
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
