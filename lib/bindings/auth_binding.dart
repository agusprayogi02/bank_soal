import 'package:bank_soal/pages/login/signin_controller.dart';
import 'package:bank_soal/pages/register/signup_controller.dart';
import 'package:bank_soal/repositories/auth_repository.dart';
import 'package:bank_soal/services/api/user_api.dart';
import 'package:get/get.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImp(apiClient: UserApiClient()));
    Get.lazyPut(() => SignInController(repository: Get.find<AuthRepository>()));
    Get.lazyPut(() => SignUpController(repository: Get.find<AuthRepository>()));
  }
}
