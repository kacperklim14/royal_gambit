import 'package:flutter/material.dart';
import 'package:royal_gambit/core/resources/app_colors.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.primaryBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.appBarBackground,
      elevation: 0,
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: AppColors.chipBackground,
      shape: StadiumBorder(
        side: BorderSide(
          color: AppColors.chipBorderLine,
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: AppColors.appBarBackground,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.border),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    ),
    expansionTileTheme: const ExpansionTileThemeData(
      tilePadding: EdgeInsets.only(
        left: 10,
      ),
      iconColor: AppColors.chipBackground,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
        fontSize: 12,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
        fontSize: 10,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
        fontSize: 10,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
        fontSize: 8,
      ),
    ),
  );
}
