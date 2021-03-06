import 'package:bank_soal/data/models/user_model.dart';
import 'package:bank_soal/data/services/api/user_api.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

abstract class AuthRepository {
  Future<UserModel?> authLogin(String email, String password);
  Future<UserModel> authRegister(String firstName, String lastName,
      String email, String password, String jk, String role);
  Future<bool> onAuth();
  Future<void> logOut();
}

class AuthRepositoryImp implements AuthRepository {
  final UserApiClient apiClient;
  var box = GetStorage();

  AuthRepositoryImp({required this.apiClient});

  @override
  Future<UserModel?> authLogin(String email, String password) async {
    try {
      var user = await apiClient.postLogin(email, password);
      return user;
    } catch (e) {
      Get.snackbar("error", e.toString());
      return null;
    }
  }

  @override
  Future<UserModel> authRegister(String firstName, String lastName,
      String email, String password, String jk, String role) {
    // implement authRegister
    throw UnimplementedError();
  }

  @override
  Future<bool> onAuth() async {
    try {
      var user = box.read('login');
      if (user) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> logOut() => box.write("login", false);
}
