import 'package:bank_soal/data/repositories/auth_repository.dart';
import 'package:bank_soal/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find<HomeController>();
  final AuthRepository repository;
  HomeController({@required this.repository}) : assert(repository != null);

  void logout() async {
    this.repository.logOut();
    var user = await this.repository.onAuth();
    if (!user) {
      Get.offAndToNamed(Routes.WELCOME);
    }
  }
}
