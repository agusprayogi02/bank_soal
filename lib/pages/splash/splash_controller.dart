import 'package:bank_soal/repositories/auth_repository.dart';
import 'package:bank_soal/utils/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();
  final AuthRepository repository;
  SplashController({this.repository}) : assert(repository != null);

  void change() async {
    var auth = await this.repository.onAuth();
    if (auth) {
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.offAllNamed(Routes.WELCOME);
    }
  }

  @override
  void onInit() {
    super.onInit();
    return change();
  }
}
