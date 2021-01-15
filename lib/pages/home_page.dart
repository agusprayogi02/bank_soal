import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:velocity_x/velocity_x.dart";

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            logo
          ],
        ).box.color(primaryC).width(w).make());
  }
}
