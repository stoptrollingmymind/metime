import 'package:flutter/material.dart';
import 'package:metime/constants/metime_colors.dart';

class MeTimeTheme {
  static ThemeData meTimeThemeData = ThemeData(
    colorScheme: const ColorScheme(
      primary: MeTimeColors.pinkPrimary,
      brightness: Brightness.light,
      onPrimary: MeTimeColors.white,
      secondary: MeTimeColors.pinkSecondary,
      onSecondary: MeTimeColors.blackSecondary,
      error: Colors.red,
      onError: Colors.redAccent,
      background: MeTimeColors.white,
      onBackground: MeTimeColors.inactive,
      surface: MeTimeColors.white,
      onSurface: MeTimeColors.blackPrimary,
    ),
    fontFamily: 'Raleway',
    scaffoldBackgroundColor: Colors.white,
    textTheme: meTimeThemeText,
    useMaterial3: true,
  );

  static const meTimeThemeText = TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: MeTimeColors.blackPrimary,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: MeTimeColors.blackPrimary,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: MeTimeColors.blackPrimary,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: MeTimeColors.blackPrimary,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: MeTimeColors.blackPrimary,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: MeTimeColors.blackTernary,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: MeTimeColors.blackPrimary,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: MeTimeColors.blackTernary,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: MeTimeColors.blackTernary,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: MeTimeColors.blackPrimary,
      ));
}
