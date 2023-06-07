import 'package:flutter/material.dart';
import 'package:inscribly/models/models.dart';
import 'package:inscribly/res/res.dart';
import 'package:inscribly/utilities/utilities.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage(
    this.onboarding, {
    super.key,
  });

  final OnboardingModel onboarding;

  @override
  Widget build(BuildContext context) => Padding(
        padding: AppDimens.edgeInsets24.copyWith(
          bottom: AppDimens.forty,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: onboarding.title,
                style: context.headlineMedium,
                children: [
                  TextSpan(
                    text: onboarding.highlightText,
                    style: context.headlineMedium.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
            AppDimens.boxHeight12,
            Text(
              onboarding.subtitle,
              style: context.titleLarge,
            ),
            const Spacer(),
            Text(
              onboarding.description,
              style: context.bodyLarge,
            ),
          ],
        ),
      );
}
