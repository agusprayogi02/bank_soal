import 'package:bank_soal/components/button/rounded_back.dart';
import 'package:bank_soal/components/costom_text_form.dart';
import 'package:bank_soal/components/button/rounded_button.dart';
import 'package:bank_soal/pages/signIn/signin_controller.dart';
import 'package:bank_soal/utils/app_pages.dart';
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
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(14),
                  child: RoundedBack(onPress: () => Get.back()),
                ),
                Container(width: w, child: Image.asset("assets/img/study.png")),
              ],
            ),
            Column(
              children: [
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: lightC,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  height: h * 0.46,
                  padding: EdgeInsets.symmetric(horizontal: 34, vertical: 12),
                  child: Obx(
                    () => Column(
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
                          obscureText: SignInController.to.enable.value,
                          onChanged: SignInController.to.onPass,
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: GestureDetector(
                            onTap: SignInController.to.onSecure,
                            child: Icon(Icons.visibility),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RoundedButton(
                          label: "Login",
                          size: 20,
                          onPress: () {},
                          width: w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            "Belum Punya Akun? ".text.make(),
                            "Register"
                                .text
                                .color(primaryC)
                                .make()
                                .onInkTap(() => Get.toNamed(Routes.HOME))
                          ],
                        ).marginOnly(top: 15)
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: primaryC,
    );
  }
}
