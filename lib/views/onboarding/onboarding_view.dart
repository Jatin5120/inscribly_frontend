import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inscribly/controllers/controllers.dart';
import 'package:inscribly/res/res.dart';
import 'package:inscribly/utilities/utilities.dart';
import 'package:inscribly/views/views.dart';
import 'package:inscribly/widgets/widgets.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.scaffoldBackgroundColor,
        body: SafeArea(
          child: GetX<OnboardingController>(
            builder: (controller) => Column(
              children: [
                Padding(
                  padding: AppDimens.edgeInsets8_4,
                  child: Row(
                    children: [
                      if (controller.currentIndex > 0)
                        Button.text(
                          label: 'Back',
                          onTap: controller.previousPage,
                        ),
                      const Spacer(),
                      if (controller.currentIndex < 2)
                        Button.text(
                          label: 'Skip',
                          onTap: controller.goToAuth,
                        ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    itemCount: controller.content.length,
                    controller: controller.pageController,
                    onPageChanged: (index) {
                      controller.currentIndex = index;
                    },
                    itemBuilder: (_, index) =>
                        OnboardingPage(controller.content[index]),
                  ),
                ),
                Padding(
                  padding: AppDimens.edgeInsets16_8,
                  child: Row(
                    children: [
                      ...[0, 1, 2].map(DotInticator.new).toList(),
                      const Spacer(),
                      Button(
                        label:
                            controller.currentIndex == 2 ? 'Continue' : 'Next',
                        iconData: controller.currentIndex == 2
                            ? Icons.done_rounded
                            : Icons.arrow_forward_rounded,
                        onTap: controller.currentIndex == 2
                            ? controller.goToAuth
                            : controller.nextPage,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
