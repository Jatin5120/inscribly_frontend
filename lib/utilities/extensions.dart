import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inscribly/controllers/controllers.dart';
import 'package:inscribly/res/res.dart';
import 'package:inscribly/utilities/utilities.dart';

extension Code on Color {
  String get code => [red, green, blue]
      .map((e) => e.toRadixString(16).padLeft(2, '0'))
      .join('');

  String get codeWithAlpha => [alpha, red, green, blue]
      .map((e) => e.toRadixString(16).padLeft(2, '0'))
      .join('');
}

extension StringExtension on String {
  bool get isValidUrl => ['http', 'https'].any(contains);

  bool get isSvg => endsWith('svg');
}

extension FontStyle on BuildContext {
  bool get _isDarkMode => Get.find<ThemeController>().isDarkMode;

  TextStyle get displayLarge =>
      Theme.of(this).textTheme.displayLarge!.withTitleColor;

  TextStyle get displayMedium =>
      Theme.of(this).textTheme.displayMedium!.withTitleColor;

  TextStyle get displaySmall =>
      Theme.of(this).textTheme.displaySmall!.withSubtitleColor;

  TextStyle get headlineLarge =>
      Theme.of(this).textTheme.headlineLarge!.withTitleColor;

  TextStyle get headlineMedium =>
      Theme.of(this).textTheme.headlineMedium!.withTitleColor;

  TextStyle get headlineSmall =>
      Theme.of(this).textTheme.headlineSmall!.withSubtitleColor;

  TextStyle get titleLarge =>
      Theme.of(this).textTheme.titleLarge!.withTitleColor;

  TextStyle get titleMedium =>
      Theme.of(this).textTheme.titleMedium!.withTitleColor;

  TextStyle get titleSmall =>
      Theme.of(this).textTheme.titleSmall!.withSubtitleColor;

  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!.withTitleColor;

  TextStyle get bodyMedium =>
      Theme.of(this).textTheme.bodyMedium!.withTitleColor;

  TextStyle get bodySmall =>
      Theme.of(this).textTheme.bodySmall!.withSubtitleColor;

  TextStyle get labelLarge =>
      Theme.of(this).textTheme.labelLarge!.withTitleColor;

  TextStyle get labelMedium =>
      Theme.of(this).textTheme.labelMedium!.withSubtitleColor;

  TextStyle get labelSmall =>
      Theme.of(this).textTheme.labelSmall!.withSubtitleColor;

  Color get scaffoldBackgroundColor =>
      _isDarkMode ? AppColors.backgroundDark : AppColors.backgroundLight;
}

extension on TextStyle {
  bool get _isDarkMode => Get.find<ThemeController>().isDarkMode;

  TextStyle get withTitleColor => copyWith(
        color: _isDarkMode ? AppColors.textDark : AppColors.textLight,
      );

  TextStyle get withSubtitleColor => copyWith(
        color: _isDarkMode ? AppColors.subtitleDark : AppColors.subtitleLight,
      );
}

extension MoodColors on Mood {
  bool get _isDarkMode => Get.find<ThemeController>().isDarkMode;
  Color get color => _isDarkMode ? _darkColor : _lightColor;

  Color get _lightColor {
    switch (this) {
      case Mood.normal:
        return const Color(0xFFD2D2D2);
      case Mood.happy:
        return const Color(0xFFFFC8B4);
      case Mood.sad:
        return const Color(0xFFFFCDD2);
      case Mood.reflection:
        return const Color(0xFFC7B8E5);
      case Mood.excited:
        return const Color(0xFFB8E1D2);
      case Mood.contemplation:
        return const Color(0xFFEFCFE7);
      case Mood.gratitude:
        return const Color(0xFFFFE699);
      case Mood.frustration:
        return const Color(0xFFB2BAC2);
      case Mood.serenity:
        return const Color(0xFFC2DFFF);
    }
  }

  Color get _darkColor {
    switch (this) {
      case Mood.normal:
        return const Color(0xFF828282);
      case Mood.happy:
        return const Color(0xFFFFAA99);
      case Mood.sad:
        return const Color(0xFFFFB2BD);
      case Mood.reflection:
        return const Color(0xFF9F8CD9);
      case Mood.excited:
        return const Color(0xFFA8DFD4);
      case Mood.contemplation:
        return const Color(0xFFDFA8C8);
      case Mood.gratitude:
        return const Color(0xFFFFD8A8);
      case Mood.frustration:
        return const Color(0xFF99A1A8);
      case Mood.serenity:
        return const Color(0xFFA8C4DF);
    }
  }
}
