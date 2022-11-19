import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.teal;
  static Color primaryDark = Colors.teal[900]!;
  static Color secondary = Colors.teal[700]!;
  static Color dark = Colors.black;
  static Color white = Colors.white;

  static ThemeData themeLight = ThemeData.light().copyWith(
    scaffoldBackgroundColor: white,
    primaryColor: primary,
    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 0,
      centerTitle: true,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 0,
      iconSize: 30,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      selectedItemColor: primary,
    ),
  );

  static ThemeData themeDark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: dark,
    primaryColor: primary,
    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 0,
      centerTitle: true,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: white,
      backgroundColor: primary,
      elevation: 0,
      iconSize: 30,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      selectedItemColor: primary,
      backgroundColor: dark,
    ),
  );
}

class AppAssets {
  static IconData delete = Icons.delete;
}
