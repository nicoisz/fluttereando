import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lighTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
        color: Colors.indigo,
        elevation: 0,
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)));
}