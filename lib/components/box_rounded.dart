import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class BoxRounded extends StatelessWidget {
  const BoxRounded({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FlatButton(
              color: whiteC,
              splashColor: lightC,
              onPressed: () {},
              child: "Register"
                  .text
                  .size(Get.height * 0.03)
                  .color(dartPrimaryC)
                  .bold
                  .make()
                  .marginSymmetric(horizontal: 18, vertical: 8),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FlatButton(
              splashColor: lightC,
              onPressed: () {},
              child: "Login"
                  .text
                  .size(Get.height * 0.03)
                  .color(whiteC)
                  .bold
                  .make()
                  .marginSymmetric(horizontal: 18, vertical: 8),
            ),
          )
        ],
      ).backgroundColor(dartPrimaryC),
    ).marginSymmetric(horizontal: Get.width * 0.09);
  }
}
