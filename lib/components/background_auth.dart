import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'button/rounded_back.dart';

class BackgroundAuth extends StatelessWidget {
  const BackgroundAuth({
    Key key,
    @required this.w,
    @required this.imgSrc,
  }) : super(key: key);

  final double w;
  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(14),
          child: RoundedBack(onPress: () => Get.back()),
        ),
        Container(width: w, child: Image.asset(imgSrc)),
      ],
    );
  }
}
