import 'package:flutter/material.dart';
import 'package:theme1/theme/app_theme.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../theme/app_colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTheme = TextTheme(
    bodySmall: TextStyle(color: AppTheme.primaryLightTextColor),
    bodyMedium: TextStyle(color: AppTheme.primaryLightTextColor),
    bodyLarge: TextStyle(color: AppTheme.primaryLightTextColor),
  );


  static TextTheme darkTheme = TextTheme(
    bodySmall: TextStyle(color: AppTheme.primaryDarkTextColor),
    bodyMedium: TextStyle(color: AppTheme.primaryDarkTextColor),
    bodyLarge: TextStyle(color: AppTheme.primaryDarkTextColor),
  );
}
