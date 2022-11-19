import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.teal;
  static Color primaryDark = Colors.teal[900]!;
  static Color secondary = Colors.teal[700]!;

  static ThemeData themeLight = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
  );

  static ThemeData themeDark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
  );
}

class AppAssets {}
