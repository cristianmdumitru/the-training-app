import 'package:flutter/material.dart';
import 'package:training_app/app/core/constants/app_colors.dart';

class AppTheme {
  AppTheme();

  static final lightColorScheme = ThemeData.light(useMaterial3: true);

  static final darkColorScheme = ThemeData.dark(
    useMaterial3: true,
  ).copyWith(
    scaffoldBackgroundColor: AppColors.darkBlue,
    appBarTheme: const AppBarTheme(
      color: AppColors.darkBlue,
    ),
  );
}
