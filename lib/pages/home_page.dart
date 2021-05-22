import 'package:bank_soal/components/rounded_box.dart';
import 'package:bank_soal/utils/style.dart';
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
    double w = context.percentWidth, h = context.percentHeight;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundedBox(
              margin: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  VxCircle(
                    backgroundColor: Colors.red,
                    radius: 40,
                  ).marginSymmetric(horizontal: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Agus Prayogi"
                          .text
                          .textStyle(whiteText)
                          .extraBold
                          .underline
                          .size(15)
                          .make()
                          .marginOnly(top: 3),
                      "Programmer".text.textStyle(whiteText).sm.make(),
                    ],
                  ),
                ],
              ),
            ), // atas
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pelajaran",
                  style: titleT,
                ),
                Vx
              ],
            ).box.margin(EdgeInsets.all(15)).alignTopLeft.make(),
          ],
        ).box.color(primaryC).width(w * 100).make());
  }
}
