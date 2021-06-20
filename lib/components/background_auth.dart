import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'button/rounded_back.dart';

class BackgroundAuth extends StatelessWidget {
  const BackgroundAuth({
    Key? key,
    required this.w,
    required this.imgSrc,
  }) : super(key: key);

  final double w;
  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(width: w, child: Image.asset(imgSrc)),
          Container(
            margin: EdgeInsets.all(14),
            child: RoundedBack(onPress: () => Get.back()),
          ),
        ],
      ),
    );
  }
}
