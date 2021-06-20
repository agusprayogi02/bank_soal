import 'package:bank_soal/components/background_auth.dart';
import 'package:bank_soal/components/button/rounded_button.dart';
import 'package:bank_soal/components/costom_text_form.dart';
import 'package:bank_soal/routes/app_pages.dart';
import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../signin_controller.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.w,
    required this.h,
  }) : super(key: key);

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        child: Stack(
          children: [
            BackgroundAuth(
              w: w,
              imgSrc: "assets/img/work.png",
            ),
            Column(
              children: [
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: lightC,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  height: h * 0.46,
                  padding: EdgeInsets.symmetric(
                    horizontal: context.percentWidth * 9,
                    vertical: context.percentWidth * 4,
                  ),
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
                          textInputType: TextInputType.emailAddress,
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
                          suffixIcon: Icon(SignInController.to.enable.value
                                  ? Icons.visibility
                                  : Icons.visibility_off)
                              .onInkTap(SignInController.to.onSecure),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RoundedButton(
                          label: "Login",
                          size: 20,
                          onPress: () => SignInController.to.onSubmit(),
                          width: w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            "Belum Punya Akun? ".text.make(),
                            "Register".text.color(primaryC).make().onInkTap(
                                () => Get.offAndToNamed(Routes.REGISTER))
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
    );
  }
}
