import 'package:bank_soal/components/user_navigation.dart';
import 'package:bank_soal/pages/home/components/card_pelajaran.dart';
import 'package:bank_soal/pages/home/home_controller.dart';
import 'package:bank_soal/utils/style.dart';
import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = context.safePercentHeight, w = context.safePercentWidth;
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UserNavigation(
              nama: "agus prayogi",
              kelas: "Programmer",
            ), // atas
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pelajaran",
                      style: titleT,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: "View All".text.gray100.size(12).make(),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        5,
                        (index) => CardPelajaran(
                          imgSrc: "IMG1616927856383.jpg",
                          pelajaran: "Matematika",
                          onTap: () {},
                        ),
                      )
                    ],
                  ),
                ).marginOnly(top: 8),
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
        ),
        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(kRadius * 2),
              topRight: Radius.circular(kRadius * 2),
            ),
            child: Container(
              width: w * 100,
              height: h * 30,
              padding: EdgeInsets.only(
                left: kPadding * 1.6,
                right: kPadding * 1.6,
                top: kPadding * 2,
                bottom: kPadding,
              ),
              color: lightC,
              child: Text(""),
            ),
          ),
        ),
      ],
    ).onTap(() => FocusScope.of(context).unfocus()).backgroundColor(primaryC);
  }
}
