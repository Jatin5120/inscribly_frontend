import 'package:get/get.dart';
import 'package:inscribly/controllers/controllers.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
    Get.lazyPut<SplashController>(SplashController.new);
  }
}
