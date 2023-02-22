import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class MyAppTheme {
  static ThemeData get materialTheme {
    return ThemeData(
      fontFamily: GoogleFonts.tajawal().fontFamily,
      scaffoldBackgroundColor: AppColors.white,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
      ),
      textTheme: const TextTheme(
        titleSmall: TextStyle(
          color: AppColors.textColor,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(color: AppColors.textColor, fontSize: 20),
        headlineSmall: TextStyle(color: AppColors.textColor, fontSize: 14),
        headlineMedium: TextStyle(color: AppColors.textColor, fontSize: 16),
        headlineLarge: TextStyle(color: AppColors.textColor, fontSize: 20),
      ),
      appBarTheme: AppBarTheme(
        color: AppColors.primary,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 80,
        titleTextStyle: GoogleFonts.tajawal(
          fontSize: 18,
          color: AppColors.white,
          fontWeight: FontWeight.w500,
          textBaseline: TextBaseline.ideographic,
        ),
      ),
    );
  }
}
