import 'package:bank_soal/components/background_auth.dart';
import 'package:bank_soal/components/button/rounded_button.dart';
import 'package:bank_soal/components/costom_text_form.dart';
import 'package:bank_soal/routes/app_pages.dart';
import 'package:bank_soal/utils/style.dart';
import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../signup_controller.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.w,
    @required this.h,
    @required this.items,
  }) : super(key: key);

  final double w;
  final double h;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            BackgroundAuth(w: w, imgSrc: "assets/img/study.png"),
            Column(
              children: [
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: lightC,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  height: h * 0.6,
                  padding: EdgeInsets.symmetric(
                      horizontal: context.percentWidth * 9,
                      vertical: context.percentHeight * 1.8),
                  child: SingleChildScrollView(
                    physics: ClampingScrollPhysics(),
                    child: Obx(
                      () => Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          "Register"
                              .text
                              .size(32)
                              .color(dartPrimaryC)
                              .bold
                              .make(),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 8,
                                child: CustomTextForm(
                                  labelText: "FistName",
                                  autocorrect: false,
                                  prefixIcon: Icon(Icons.person),
                                  onChanged: SignUpController.to.onFist,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(),
                              ),
                              Expanded(
                                flex: 8,
                                child: CustomTextForm(
                                  labelText: "LastName",
                                  autocorrect: false,
                                  onChanged: SignUpController.to.onLast,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextForm(
                            labelText: "Email",
                            autocorrect: false,
                            textInputType: TextInputType.emailAddress,
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
                          Container(
                            width: w,
                            decoration: roundedBox,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.history,
                                  color: Colors.black54,
                                ).marginSymmetric(horizontal: 10),
                                DropdownButton<String>(
                                  hint: "Jenis Kelamin".text.make(),
                                  value: SignUpController.to.jk.value,
                                  items: items
                                      .map((e) => DropdownMenuItem(
                                            value: e,
                                            child: "$e"
                                                .text
                                                .make()
                                                .w(context.percentWidth * 60),
                                          ))
                                      .toList(),
                                  onChanged: (value) =>
                                      SignUpController.to.onJk(value),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          RoundedButton(
                            label: "Register",
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
                      ).scrollVertical(),
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
