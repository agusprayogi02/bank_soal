import 'package:bank_soal/components/costom_text_form.dart';
import 'package:bank_soal/pages/signIn/signin_controller.dart';
import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SignInPage extends GetView<SignInController> {
  @override
  Widget build(BuildContext context) {
    double h = Get.height, w = Get.width;
    return Scaffold(
      appBar: AppBar(title: Text('SignInPage')),
      body: Container(
        height: h,
        width: w,
        color: primaryC,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Image.asset("assets/img/study.png"),
            ),
            Positioned(
              bottom: 0,
              child: Column(
                children: [
                  Expanded(
                    child: CustomTextForm(
                      labelText: "Email",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
