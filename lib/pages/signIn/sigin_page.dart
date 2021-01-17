import 'package:bank_soal/components/costom_text_form.dart';
import 'package:bank_soal/components/rounded_button.dart';
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
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(20),
        child: Image.asset("assets/img/study.png"),
      ),
      backgroundColor: primaryC,
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: lightC,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        height: h * 0.5,
        padding: EdgeInsets.symmetric(horizontal: 34, vertical: 12),
        child: Column(
          children: [
            "Login".text.size(32).color(dartPrimaryC).bold.make(),
            SizedBox(
              height: 20,
            ),
            CustomTextForm(
              labelText: "Email",
              autocorrect: false,
              onChanged: SignInController.to.onEmail,
              prefixIcon: Icon(Icons.email),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextForm(
              labelText: "Password",
              autocorrect: false,
              onChanged: SignInController.to.onPass,
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
            ),
            SizedBox(
              height: 20,
            ),
            RoundedButton(
              label: "Login",
              size: 20,
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }
}
