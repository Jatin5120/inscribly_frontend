import 'package:get/get.dart';
import 'package:inscribly/controllers/auth/auth.dart';
import 'package:inscribly/repositories/repositories.dart';
import 'package:inscribly/view_models/view_models.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(
        AuthViewModel(
          AuthRepository(),
        ),
      ),
    );
  }
}
