import 'package:bank_soal/data/repositories/auth_repository.dart';
import 'package:bank_soal/data/services/api/user_api.dart';
import 'package:bank_soal/pages/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        repository: AuthRepositoryImp(
          apiClient: UserApiClient(),
        ),
      ),
    );
  }
}
