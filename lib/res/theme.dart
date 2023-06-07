import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inscribly/res/res.dart';

class AppTheme {
  AppTheme._();

  static AppTheme get instance => AppTheme._();

  ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: _textTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      tertiary: AppColors.accentLight,
      background: AppColors.backgroundLight,
      brightness: Brightness.light,
      error: AppColors.error,
    ),
  );

  ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    textTheme: _textTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      tertiary: AppColors.accentDark,
      background: AppColors.backgroundDark,
      brightness: Brightness.dark,
      error: AppColors.error,
    ),
  );
}

TextTheme get _textTheme => TextTheme(
      displayLarge: GoogleFonts.openSans(
        fontSize: 57,
        fontWeight: FontWeight.w400,
      ),
      displayMedium: GoogleFonts.openSans(
        fontSize: 45,
        fontWeight: FontWeight.w400,
      ),
      displaySmall: GoogleFonts.openSans(
        fontSize: 36,
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: GoogleFonts.openSans(
        fontSize: 32,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: GoogleFonts.openSans(
        fontSize: 28,
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: GoogleFonts.openSans(
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: GoogleFonts.openSans(
        fontSize: 22,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: GoogleFonts.openSans(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.openSans(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: GoogleFonts.openSans(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: GoogleFonts.openSans(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: GoogleFonts.openSans(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: GoogleFonts.openSans(
        fontSize: 11,
        fontWeight: FontWeight.w500,
      ),
    );
