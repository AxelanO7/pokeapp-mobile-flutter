import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData themeData = ThemeData(
    appBarTheme: AppThemes.appBarTheme,
    scaffoldBackgroundColor: Colors.grey[900],
  );
  static AppBarTheme appBarTheme = const AppBarTheme(backgroundColor: Colors.black);
}
