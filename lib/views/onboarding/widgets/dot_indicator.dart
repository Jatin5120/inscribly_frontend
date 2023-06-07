import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inscribly/controllers/controllers.dart';
import 'package:inscribly/res/res.dart';

class DotInticator extends StatelessWidget {
  const DotInticator(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context) => GetX<OnboardingController>(
        builder: (controller) => AnimatedContainer(
          margin: AppDimens.edgeInsets4_0,
          duration: const Duration(milliseconds: 150),
          height: AppDimens.ten,
          width: controller.currentIndex == index
              ? AppDimens.twentyFour
              : AppDimens.ten,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimens.ten),
            color: controller.currentIndex == index
                ? AppColors.primary
                : AppColors.secondary,
          ),
        ),
      );
}
