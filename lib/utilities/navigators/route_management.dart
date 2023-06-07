import 'package:get/get.dart';
import 'package:inscribly/utilities/utilities.dart';

class RouteManagement {
  const RouteManagement._();

  static void goToOnboarding() {
    Get.toNamed(AppRoutes.onboarding);
  }

  static void goToAuth() {
    Get.offNamed(AppRoutes.auth);
  }

  static void goToRegister() {
    Get.offNamed(AppRoutes.register);
  }

  static void goToEmailLogin() {
    Get.offNamed(AppRoutes.loginEmail);
  }

  static void goToPhoneLogin() {
    Get.offNamed(AppRoutes.loginPhone);
  }
}
