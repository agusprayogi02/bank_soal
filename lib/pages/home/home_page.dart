import 'package:bank_soal/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/body.dart';
import 'components/bottom_navigation.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      backgroundColor: Get.theme.accentColor,
      body: Body(),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
}
