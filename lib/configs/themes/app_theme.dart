import 'package:flutter/material.dart';

import 'app_color.dart';

abstract class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.background,

    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        surfaceTintColor: WidgetStatePropertyAll(Colors.white),
      ),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder()},
    ),
  );
}
