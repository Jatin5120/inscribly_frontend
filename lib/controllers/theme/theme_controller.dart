import 'package:get/get.dart';

class ThemeController extends GetxController {
  final RxBool _isDarkMode = false.obs;
  bool get isDarkMode => _isDarkMode.value;
  set isDarkMode(bool value) => _isDarkMode.value = value;
}
