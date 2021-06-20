import 'package:bank_soal/utils/style.dart';
import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class BoxRounded extends StatelessWidget {
  final Function onLoginPress;
  final Function onRegisterPress;
  final double? width;

  const BoxRounded({
    Key? key,
    required this.onLoginPress,
    required this.onRegisterPress,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: this.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                splashColor: lightC,
                onTap: onRegisterPress as void Function()?,
                child: Container(
                  color: whiteC,
                  alignment: AlignmentDirectional.center,
                  width: width! * 0.5,
                  child: "Register"
                      .text
                      .size(kfontSize * 1.7)
                      .color(dartPrimaryC)
                      .bold
                      .make()
                      .marginSymmetric(vertical: kMargin * 1.4),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                splashColor: lightC,
                onTap: onLoginPress as void Function()?,
                child: Container(
                  width: width! * 0.5,
                  alignment: AlignmentDirectional.center,
                  child: "Login"
                      .text
                      .size(kfontSize * 1.7)
                      .color(whiteC)
                      .bold
                      .make()
                      .marginSymmetric(vertical: kMargin * 1.4),
                ),
              ),
            )
          ],
        ).backgroundColor(dartPrimaryC),
      ),
    ).marginSymmetric(horizontal: Get.width * 0.09);
  }
}
