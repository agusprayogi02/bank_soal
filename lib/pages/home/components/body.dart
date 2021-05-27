import 'package:bank_soal/components/rounded_box.dart';
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
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                "View All".text.gray100.make().onTap(() {})
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
    );
  }
}
