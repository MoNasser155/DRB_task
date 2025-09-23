import 'package:drb_task/core/colorhelper.dart';
import 'package:flutter/material.dart';


class AppTextTheme {
  static TextStyle get headlineSmall => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: ColorHelper.black,
      );

  static TextStyle get headlineMedium => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      );

  static TextStyle get headlineLarge => const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      );

  static TextStyle get bodySmall => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.black87,
      );

  static TextStyle get bodyMedium => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.black87,
      );

  static TextStyle get bodyLarge => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.black87,
      );

  static TextStyle get buttonTextStyle => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  static TextTheme get textTheme => TextTheme(
        headlineSmall: headlineSmall,
        headlineMedium: headlineMedium,
        headlineLarge: headlineLarge,
        bodySmall: bodySmall,
        bodyMedium: bodyMedium,
        bodyLarge: bodyLarge,
        labelLarge: buttonTextStyle,
      );
}
