import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inscribly/data/data.dart';
import 'package:inscribly/res/res.dart';
import 'package:inscribly/utilities/utilities.dart';

class SplashController extends GetxController {
  late Animation<double> animation;
  late AnimationController animationController;

  final _dbWrapper = Get.find<DBWrapper>();

  void navigate() async {
    var isFirstTime =
        _dbWrapper.getBoolValue(LocalKeys.isFirstTime, defaultValue: true);
    var isLoggedIn = _dbWrapper.getBoolValue(LocalKeys.isLoggedIn);
    await Future.delayed(const Duration(seconds: 2));
    AppLog('Navigating to Auth');
    if (isFirstTime) {
      RouteManagement.goToOnboarding();
    } else if (isLoggedIn) {
      // navigate to Home screen
    } else {
      // navigate to Login screen
    }
  }
}
