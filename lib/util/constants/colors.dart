import 'package:flutter/material.dart';

class FreshPressAppColors {
  FreshPressAppColors._();

  // App Basic Colors
  static const Color primarydarkh = Color.fromARGB(
    255,
    1,
    27,
    53,
  ); //.fromRGBO(33, 150, 243, 1);
  static const Color primarylight2 = Color.fromRGBO(123, 44, 191, 1); //.fromRGBO(33, 150, 243, 1);
  static const Color primarylight = Color(0xFFE6F2FF);
  static const Color primary = Color(0xFF077AFB);
  static const Color icon = Color(0xFF292D32);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  // Gradient Colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [Color(0xffff9a9e), Color(0xfffad0c4), Color(0xfffad0c4)],
  );

  // Text Basic Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = FreshPressAppColors.white.withOpacity(0.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const Color borderPrimary = Color(0xFF4b68ff);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Errors And Validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0XFF388E3C);
  static const Color warning = Color(0XFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Natural Shades
  static const Color black = Color(0xFF1A1B1D);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFF3F4247);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);

  // Others color
  static const Color red = Color(0xFFD32F2F);
  static const Color green = Color(0xFF43A047);
  static const Color yellow = Color(0xFFFDD835);
  static const Color orange = Color(0xFFFF9A2D);
  static const Color brown = Color(0xFF795548);
  static const Color teal = Color(0xFF00897B);
}
