import 'package:flutter/material.dart';
import 'package:islamic_app/app_colors.dart';

class MyThemeData {
  /// light , dark , colors

  static final ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: AppColors.primaryLightColor,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.blackColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.blackColor,
      unselectedItemColor: AppColors.whiteColor,
      showUnselectedLabels: true,
    ),
  );
}
