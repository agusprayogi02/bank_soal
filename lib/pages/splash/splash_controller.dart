import 'package:bank_soal/data/repositories/auth_repository.dart';
import 'package:bank_soal/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();
  final AuthRepository repository;
  SplashController({required this.repository});

  void change() async {
    var auth = await this.repository.onAuth();
    Future.delayed(
      Duration(seconds: 2),
      () =>
          auth ? Get.offAllNamed(Routes.HOME) : Get.offAllNamed(Routes.WELCOME),
    );
  }

  @override
  void onInit() {
    super.onInit();
    return change();
  }
}
