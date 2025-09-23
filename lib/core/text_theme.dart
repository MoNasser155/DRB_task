import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme get textTheme => TextTheme(
      headlineLarge: GoogleFonts.manrope(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: GoogleFonts.manrope(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: GoogleFonts.manrope(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      displayLarge: GoogleFonts.manrope(
        color: Colors.black,
        fontSize: 18,
      ),
      displayMedium: GoogleFonts.manrope(
        color: Colors.black,
        fontSize: 16,
      ),
      displaySmall: GoogleFonts.manrope(
        color: Colors.black,
        fontSize: 12,
      ));
}
