import 'package:bank_soal/components/rounded_box.dart';
import 'package:bank_soal/pages/home/home_controller.dart';
import 'package:bank_soal/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      .marginOnly(top: 4),
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    20,
                    (index) => Text("apa kabar $index"),
                  )
                ],
              ),
            )
          ],
        ).box.margin(EdgeInsets.all(15)).alignTopLeft.make(),
        SizedBox(
          height: 10,
        ),
        MaterialButton(
          color: Colors.white,
          splashColor: Colors.black,
          elevation: 4,
          animationDuration: Duration(milliseconds: 500),
          onPressed: () => HomeController.to.logout(),
          child: Text("logout"),
        ),
      ],
    );
  }
}
