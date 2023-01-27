import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData lightTheme = _lightTheme;
}

final ThemeData _lightTheme = ThemeData.light().copyWith();
