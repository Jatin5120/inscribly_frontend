import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  static const Color primary = Color(0xFF8E44AD);
  static const Color primaryDark = Color(0xFF4B245C);

  static const List<Color> primaryGradient = [
    primary,
    primaryDark,
  ];

  static const Color secondary = Color(0xFFC39BD3);

  static const Color accentLight = Color(0xFFF9A825);
  static const Color accentDark = Color(0xFF4FD1C5);

  static const Color backgroundLight = Color(0xFFF5F5F5);
  static const Color backgroundDark = Color(0xFF2B2B2B);

  static const Color cardLight = Color(0xFFE6E6FA);
  static const Color cardDark = Color(0xFF4B0082);

  static const Color textLight = Color(0xFF333333);
  static const Color textDark = Color(0xFFF5F5F5);

  static const Color subtitleLight = Color(0xFF757575);
  static const Color subtitleDark = Color(0xFFAAAAAA);

  static const Color success = Color(0xFF32CD32);
  static const Color warning = Color(0xFFFFA500);
  static const Color error = Color(0xFFFF0000);
}
