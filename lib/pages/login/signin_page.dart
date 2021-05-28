import 'package:bank_soal/pages/login/signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/body.dart';

class SignInPage extends GetView<SignInController> {
  @override
  Widget build(BuildContext context) {
    double h = Get.height, w = Get.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Body(w: w, h: h),
      backgroundColor: Get.theme.backgroundColor,
    );
  }
}
