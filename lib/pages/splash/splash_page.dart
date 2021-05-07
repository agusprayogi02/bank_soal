import 'package:bank_soal/pages/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SplashController.to.change();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(
            height: 20,
            width: 20,
          ),
          "Loading ...".text.headline6(context).blue400.make(),
        ],
      ).centered(),
    );
  }
}
