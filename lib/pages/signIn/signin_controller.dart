import 'package:bank_soal/repositories/auth_repository.dart';
import 'package:bank_soal/utils/app_state.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get to => Get.find();

  final AuthRepository authRepo;
  SignInController(this.authRepo);

  final email = "".obs;
  final password = "".obs;
  final appState = Rx<AppState>();
  void onEmail(val) => this.email.value = val;
  void onPass(val) => this.password.value = val;
}
