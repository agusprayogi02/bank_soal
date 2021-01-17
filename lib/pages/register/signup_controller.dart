import 'package:bank_soal/repositories/auth_repository.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class SignUpController extends GetxController {
  final AuthRepository repository;
  SignUpController({@required this.repository}) : assert(repository != null);

  final fist = ''.obs;
  final last = ''.obs;
  final email = ''.obs;
  final password = ''.obs;
  final jk = ''.obs;

  void onFist(val) => this.fist.value = val;
  void onLast(val) => this.last.value = val;
  void onEmail(val) => this.email.value = val;
  void onPassword(val) => this.password.value = val;
  void onJk(val) => this.jk.value = val;
}
