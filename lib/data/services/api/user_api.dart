import 'dart:convert';

import 'package:bank_soal/data/models/user_model.dart';
import 'package:bank_soal/utils/utils.dart';
import 'package:get/get_connect/connect.dart';

class UserApiClient extends GetConnect {
  Future<UserModel> postLogin(String user, String pass) async {
    final form = jsonEncode(<String, String>{
      'email': user,
      'password': pass,
    });
    var respon = await post(apiUrl + "/users/login", form);
    var status = respon.body['status'];
    var data = respon.body['data'];
    print(status);
    if (status != 200) {
      print("gagal");
      throw (data['error']);
    }
    return UserModel.fromJson(data);
  }
}
