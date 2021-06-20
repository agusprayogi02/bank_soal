import 'package:bank_soal/data/repositories/auth_repository.dart';
import 'package:bank_soal/routes/app_pages.dart';
import 'package:bank_soal/utils/app_state.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SignInController extends GetxController {
  static SignInController get to => Get.find();

  final AuthRepository? repository;
  SignInController({this.repository});

  final email = "".obs;
  final password = "".obs;
  final enable = true.obs;
  final appState = Rx<AppState>(AppState.LOADING);
  final box = GetStorage();
  void onEmail(val) => this.email.value = val;
  void onPass(val) => this.password.value = val;
  void onSecure() => this.enable.value = !this.enable.value;
  void onSubmit() async {
    if (email.value != '' && password.value != '') {
      var user = await this.repository!.authLogin(email.value, password.value);
      box.write("user", user.toString());
      box.write("login", true);
      Get.offAndToNamed(Routes.HOME);
    } else {
      Get.snackbar("Error", "Harus diisi Semua!");
    }
  }
}
