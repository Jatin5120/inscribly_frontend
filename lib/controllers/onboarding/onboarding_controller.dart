import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inscribly/models/models.dart';
import 'package:inscribly/res/res.dart';

class OnboardingController extends GetxController {
  final RxInt _currentIndex = 0.obs;
  int get currentIndex => _currentIndex.value;
  set currentIndex(int value) => _currentIndex.value = value;

  var pageController = PageController();

  final List<OnboardingModel> content = [
    const OnboardingModel(
      title: 'Welcome to ',
      highlightText: AppStrings.name,
      subtitle: 'Unleash Your Creativity',
      description:
          'Share your thoughts, songs, quotes, and more. Express yourself, connect with like-minded individuals, and inspire others with your unique voice.',
      asset: AssetsConstants.creativeAnimation,
    ),
    const OnboardingModel(
      title: 'Share ',
      highlightText: 'Your Story',
      subtitle: 'Connect and Collaborate',
      description:
          'Join a community of passionate individuals. Share your creative works, collaborate on projects, and engage in conversations that fuel up your imagination.',
      asset: AssetsConstants.collaborateAnimation,
    ),
    const OnboardingModel(
      title: 'Reflect and ',
      highlightText: 'Grow',
      subtitle: 'Your Personal Diary',
      description:
          'Capture your thoughts, experiences, and personal growth. Use ${AppStrings.name}\'s daily diary feature as your personal space for reflection and self-discovery.',
      asset: AssetsConstants.diaryAnimation,
    ),
  ];

  void nextPage() {
    pageController.nextPage(
      duration: AppConstants.pageDuration,
      curve: Curves.easeInOut,
    );
  }

  void previousPage() {
    pageController.previousPage(
      duration: AppConstants.pageDuration,
      curve: Curves.easeInOut,
    );
  }

  void goToAuth() {
    // RouteManagement.
  }
}
