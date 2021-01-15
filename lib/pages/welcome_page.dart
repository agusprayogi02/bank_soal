import 'package:bank_soal/components/box_rounded.dart';
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
          BoxRounded().marginOnly(top: h * 0.27)
        ],
      ).box.color(primaryC).width(w).make(),
    );
  }
}
