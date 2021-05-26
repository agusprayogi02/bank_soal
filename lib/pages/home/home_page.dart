import 'package:bank_soal/pages/home/home_controller.dart';
import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import 'components/body.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryC,
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Body(),
    );
  }
}
