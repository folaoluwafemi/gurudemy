import 'package:flutter/material.dart';
import 'package:gurudemy/src/global/global_barrel.dart';

abstract class AppTheme {
  static ThemeData lightTheme = _lightTheme;
}

final ThemeData _lightTheme = ThemeData.light().copyWith(
  primaryColor: AppColors.green,
  colorScheme: _lightColorScheme,
  scaffoldBackgroundColor: AppColors.backgroundGrey,
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: AppColors.orange,
  ),
);

final TextTheme _textTheme = TextTheme(
  headlineLarge: TextStyles.heading,
  headlineMedium: TextStyles.subHeading1,
  headlineSmall: TextStyles.subHeading2,
  bodyLarge: TextStyles.bodyLarge,
  bodySmall: TextStyles.bodySmall,
  bodyMedium: TextStyle.lerp(
    TextStyles.bodySmall,
    TextStyles.bodyLarge,
    0.5,
  ),
  titleSmall: TextStyles.caption,
);

const ColorScheme _lightColorScheme = ColorScheme.light(
  primary: AppColors.green,
  onPrimary: AppColors.white,
  secondary: AppColors.orange,
  onSecondary: AppColors.white,
  background: AppColors.white,
);
