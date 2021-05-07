import 'package:bank_soal/bindings/auth_binding.dart';
import 'package:bank_soal/pages/register/signup_page.dart';
import 'package:bank_soal/pages/home_page.dart';
import 'package:bank_soal/pages/login/signin_page.dart';
import 'package:bank_soal/pages/splash/splash_page.dart';
import 'package:bank_soal/pages/welcome_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(name: Routes.INITIAL, page: () => SplashPage(), binding: AuthBinding()),
    GetPage(name: Routes.WELCOME, page: () => WelcomePage()),
    GetPage(name: Routes.LOGIN, page: () => SignInPage(), binding: AuthBinding()),
    GetPage(name: Routes.REGISTER, page: () => SignUpPage(), binding: AuthBinding())
  ];
}
