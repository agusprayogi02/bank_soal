import 'package:bank_soal/pages/splash/splash_page.dart';
import 'package:bank_soal/utils/app_pages.dart';
import 'package:bank_soal/utils/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
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
