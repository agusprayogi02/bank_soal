import 'package:bank_soal/repositories/auth_repository.dart';
import 'package:bank_soal/utils/app_state.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get to => Get.find();

  final AuthRepository repository;
  SignInController({this.repository});

  final email = "".obs;
  final password = "".obs;
  final enable = true.obs;
  final appState = Rx<AppState>();
  void onEmail(val) => this.email.value = val;
  void onPass(val) => this.password.value = val;
  void onSecure() => this.enable.value = !this.enable.value;
  void onSubmit() {
    if (email.value != '' && password.value != '') {
      this.repository.authLogin(email.value, password.value);
    } else {
      Get.snackbar("Error", "Harus diisi Semua!");
    }
  }
}
