import 'package:bank_soal/components/button/rounded_back.dart';
import 'package:bank_soal/components/button/rounded_button.dart';
import 'package:bank_soal/components/costom_text_form.dart';
import 'package:bank_soal/pages/register/signup_controller.dart';
import 'package:bank_soal/utils/app_pages.dart';
import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpPage extends GetView<SignUpController> {
  List<String> items = <String>["Laki-Laki", "Perempuan"];
  @override
  Widget build(BuildContext context) {
    var w = Get.width, h = Get.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      resizeToAvoidBottomPadding: false,
      backgroundColor: primaryC,
      body: Container(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RoundedBack(onPress: () => Get.back()).marginAll(14),
                Container(width: w, child: Image.asset("assets/img/study.png")),
              ],
            ),
            Column(
              children: [
                Spacer(),
                SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: lightC,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    height: h * 0.7,
                    padding: EdgeInsets.symmetric(horizontal: 34, vertical: 12),
                    child: Obx(
                      () => Column(
                        children: [
                          "Register".text.size(32).color(dartPrimaryC).bold.make(),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextForm(
                            labelText: "FistName",
                            autocorrect: false,
                            onChanged: SignUpController.to.onFist,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextForm(
                            labelText: "LastName",
                            autocorrect: false,
                            onChanged: SignUpController.to.onLast,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextForm(
                            labelText: "Email",
                            autocorrect: false,
                            onChanged: SignUpController.to.onEmail,
                            prefixIcon: Icon(Icons.email),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextForm(
                            labelText: "Password",
                            autocorrect: false,
                            obscureText: SignUpController.to.enable.value,
                            onChanged: SignUpController.to.onPassword,
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(SignUpController.to.enable.value
                                    ? Icons.visibility
                                    : Icons.visibility_off)
                                .onInkTap(SignUpController.to.onSecure),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          DropdownButton<String>(
                            hint: "Jenis Kelamin".text.make(),
                            value: SignUpController.to.jk.value,
                            items: items
                                .map((e) => DropdownMenuItem(value: e, child: "$e".text.make()))
                                .toList(),
                            onChanged: (value) => SignUpController.to.onJk(value),
                          ).box.size(w, h * 0.04).padding(EdgeInsets.only(left: 10)).make(),
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
                              "Sudah Punya Akun? ".text.make(),
                              "Login".text.color(primaryC).make().onInkTap(
                                    () => Get.offAndToNamed(Routes.LOGIN),
                                  )
                            ],
                          ).marginOnly(top: 15)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
