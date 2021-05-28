import 'package:bank_soal/pages/splash/splash_controller.dart';
import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SplashController.to.change();
    return Scaffold(
      backgroundColor: context.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: CircularProgressIndicator(
              color: whiteC,
            ),
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
          "Loading ...".text.headline6(context).white.make(),
        ],
      ).centered(),
    );
  }
}
