import 'package:bank_soal/models/user_model.dart';
import 'package:bank_soal/services/api/user_api.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

abstract class AuthRepository {
  Future<UserModel> authLogin(String email, String password);
  Future<UserModel> authRegister(
      String firstName, String lastName, String email, String password, String jk, String role);
}

class AuthRepositoryImp implements AuthRepository {
  final UserApiClient apiClient;

  AuthRepositoryImp({@required this.apiClient}) : assert(apiClient != null);

  @override
  Future<UserModel> authLogin(String email, String password) async {
    try {
      var user = await apiClient.postLogin(email, password);
      return user;
    } catch (e) {
      Get.snackbar("error", e.error);
      return null;
    }
  }

  @override
  Future<UserModel> authRegister(
      String firstName, String lastName, String email, String password, String jk, String role) {
    // TODO: implement authRegister
    throw UnimplementedError();
  }
}