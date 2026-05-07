import 'package:flutter/material.dart';
import 'package:radar_clima2/core/constants/app_colors.dart';

abstract final class AppTheme {
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.themeSeed,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
  );

  static final dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.themeSeed,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: AppColors.background,
    useMaterial3: true,
  );
}
