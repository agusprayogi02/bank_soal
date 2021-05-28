import 'package:bank_soal/pages/register/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/body.dart';

class SignUpPage extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    List<String> items = <String>["Jenis Kelamin", "Laki-Laki", "Perempuan"];
    var w = Get.width, h = Get.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      backgroundColor: Get.theme.backgroundColor,
      body: Body(w: w, h: h, items: items),
    );
  }
}
