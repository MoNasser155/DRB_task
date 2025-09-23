import 'package:drb_task/core/colorhelper.dart';
import 'package:drb_task/core/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum AppThemeType { light, dark }

final appThemeData = {
  AppThemeType.light: ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: ColorHelper.primary,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.white,
            systemNavigationBarContrastEnforced: true,
          )),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: ColorHelper.weightPrimary,
        backgroundColor: Colors.white,
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
    textTheme: AppTextTheme.textTheme,
    colorScheme: const ColorScheme.light(
      primary: ColorHelper.primary,
      secondary: Colors.white,
      onPrimary: Colors.white,
      surface: Colors.white,
    ),
  ),
  AppThemeType.dark: ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.grey[900],
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[900],
      iconTheme: const IconThemeData(color: Colors.white70),
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: ColorHelper.primary,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal[700],
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
    textTheme: AppTextTheme.textTheme,
    colorScheme: ColorScheme.dark(
      primary: Colors.grey[900]!,
      secondary: Colors.teal[700]!,
      onPrimary: Colors.white,
      surface: Colors.black,
    ),
  ),
};
