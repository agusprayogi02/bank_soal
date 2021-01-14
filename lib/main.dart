import 'package:bank_soal/pages/home_page.dart';
import 'package:bank_soal/utils/app_pages.dart';
import 'package:bank_soal/utils/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    theme: appThemeData,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    home: HomePage(),
  ));
}
