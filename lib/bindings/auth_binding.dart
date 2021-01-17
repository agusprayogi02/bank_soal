import 'package:bank_soal/pages/signIn/signin_controller.dart';
import 'package:bank_soal/repositories/auth_repository.dart';
import 'package:bank_soal/services/api/user_api.dart';
import 'package:get/get.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImp(apiClient: UserApiClient()));
    Get.lazyPut(() => SignInController(Get.find<AuthRepository>()));
  }
}
