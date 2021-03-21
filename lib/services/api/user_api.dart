import 'dart:convert';

import 'package:bank_soal/models/user_model.dart';
import 'package:bank_soal/utils/utils.dart';
import 'package:get/get_connect/connect.dart';

class UserApiClient extends GetConnect {
  Future<UserModel> postLogin(String user, String pass) async {
    final form = FormData(<String, String>{
      'user': user,
      'pass': pass,
    });
    var respon = await post(
      apiUrl + "/users/login",
      form,
      headers: {
        'content-type': "application/json",
      },
    );
    var status = jsonDecode(respon.body)['status'];
    var data = jsonDecode(respon.body)['data'];
    if (status != 200) {
      print("gagal");
      throw (data['error']);
    }
    return UserModel.fromJson(data);
  }
}
