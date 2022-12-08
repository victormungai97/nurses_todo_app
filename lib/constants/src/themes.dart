// lib/constants/src/themes.dart

import 'package:flutter/material.dart';
import 'package:nurses_todo_app/constants/src/colors.dart';

/// Define the various themes used in the app
class AppThemes {
  /// Theme for the application
  static final ThemeData appTheme = ThemeData(
    primarySwatch: AppColors.kPrimaryColor,
    canvasColor: AppColors.canvasColor,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    error: AppColors.errorColor,
    brightness: Brightness.light,
  ),
    cardColor: Colors.white,
  );
}