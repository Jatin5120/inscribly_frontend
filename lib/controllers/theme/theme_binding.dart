import 'package:get/get.dart';
import 'package:inscribly/controllers/theme/theme.dart';

class ThemeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemeController>(
      ThemeController.new,
    );
  }
}
