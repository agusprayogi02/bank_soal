import 'package:bank_soal/components/button/box_rounded.dart';
import 'package:bank_soal/routes/app_pages.dart';
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
    double w = context.width, h = context.percentHeight;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      backgroundColor: context.backgroundColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/img/work.png")
                .box
                .margin(EdgeInsets.only(top: h * 5, bottom: h * 6.6))
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
                .marginOnly(top: h * 2),
            BoxRounded(
              width: context.percentWidth * 70,
              onLoginPress: () => Get.toNamed(Routes.LOGIN),
              onRegisterPress: () => Get.toNamed(Routes.REGISTER),
            ).marginOnly(top: h * 8)
          ],
        ).box.width(w).height(h * 100).make().scrollVertical(),
      ),
    );
  }
}
