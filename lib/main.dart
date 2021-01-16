import 'package:bank_soal/utils/app_pages.dart';
import 'package:bank_soal/utils/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.INITIAL,
      theme: Themes.light,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
    );
  }
}
