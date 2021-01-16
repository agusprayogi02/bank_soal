import 'dart:convert';

import 'package:bank_soal/models/user_model.dart';
import 'package:bank_soal/utils/utils.dart';
import 'package:http/http.dart' as http;

class UserApiClient {
  Future<UserModel> postLogin(String user, String pass) async {
    var respon = await http.post(
      apiUrl + "/users/login",
      headers: {
        'content-type': "application/json",
      },
      body: jsonEncode(<String, String>{
        'user': user,
        'pass': pass,
      }),
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
