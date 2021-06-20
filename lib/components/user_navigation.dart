import 'package:bank_soal/components/rounded_box.dart';
import 'package:bank_soal/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class UserNavigation extends StatelessWidget {
  const UserNavigation({
    Key? key,
    required this.nama,
    required this.kelas,
  }) : super(key: key);

  final String nama;
  final String kelas;

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
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
              "$nama"
                  .text
                  .textStyle(whiteText)
                  .extraBold
                  .underline
                  .size(15)
                  .make()
                  .marginOnly(top: 4),
              "$kelas".text.textStyle(whiteText).sm.make(),
            ],
          ),
        ],
      ),
    );
  }
}
