import 'package:bank_soal/pages/home_page.dart';
import 'package:bank_soal/pages/signIn/sigin_page.dart';
import 'package:bank_soal/pages/welcome_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(name: Routes.INITIAL, page: () => WelcomePage()),
    GetPage(name: Routes.LOGIN, page: () => SignInPage())
  ];
}
