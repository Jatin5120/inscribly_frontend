import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inscribly/controllers/splash/splash.dart';
import 'package:inscribly/res/res.dart';
import 'package:inscribly/widgets/app_image.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  var controller = Get.find<SplashController>();

  @override
  void initState() {
    super.initState();
    controller.animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    controller.animation = Tween(begin: 5.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller.animationController,
        curve: Curves.easeOutCubic,
      ),
    );
    controller.animationController.forward();
    controller.navigate();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: AppColors.primaryGradient,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          alignment: Alignment.center,
          child: ScaleTransition(
            scale: controller.animation,
            child: AppImage(
              AssetsConstants.iconWhiteSvg,
              dimension: AppDimens.seventy,
            ),
          ),
        ),
      );
}
