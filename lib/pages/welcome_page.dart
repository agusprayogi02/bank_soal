import 'package:bank_soal/components/button/box_rounded.dart';
import 'package:bank_soal/utils/app_pages.dart';
import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:velocity_x/velocity_x.dart";

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double w = Get.width, h = Get.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/img/work.png")
              .box
              .margin(EdgeInsets.only(top: h * 0.05, bottom: h * 0.066))
              .make(),
          logo,
          "Bank Soal merupakan sekumpulan butir soal terkalibrasi (teruji), baik secara teori "
                  "maupun empiris, dan memuat informasi penting. Untuk menguji kemanpuan siswa, agar saling berkompetisi."
              .text
              .medium
              .white
              .justify
              .make()
              .box
              .width(280)
              .make()
              .marginOnly(top: h * 0.02),
          BoxRounded(
            onLoginPress: () => Get.toNamed(Routes.LOGIN),
            onRegisterPress: () {},
          ).marginOnly(top: h * 0.08)
        ],
      ).box.color(primaryC).width(w).make(),
    );
  }
}
