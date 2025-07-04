
import 'package:flutter/material.dart';
import 'package:freshpress/util/constants/colors.dart';
import 'package:freshpress/util/theme/custom_themes/appbar_theme.dart';
import 'package:freshpress/util/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:freshpress/util/theme/custom_themes/checkbox_theme.dart';
import 'package:freshpress/util/theme/custom_themes/chip_theme.dart';
import 'package:freshpress/util/theme/custom_themes/elevated_button_theme.dart';
import 'package:freshpress/util/theme/custom_themes/outlined_button_theme.dart';
import 'package:freshpress/util/theme/custom_themes/text_field_theme.dart';
import 'package:freshpress/util/theme/custom_themes/text_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class FreshPressAppTheme {
  FreshPressAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.nunito().fontFamily,
    brightness: Brightness.light,
    primaryColor: FreshPressAppColors.primary,
    scaffoldBackgroundColor: Colors.white,
    textTheme: FreshPressTextTheme.lightTextTheme,
    chipTheme: FreshPressChipTheme.lightChipTheme,
    elevatedButtonTheme: FreshPressElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: FreshPressAppBarTheme.lightAppBarTheme,
    checkboxTheme: FreshPressCheckboxTheme.lightChechboxTheme,
    outlinedButtonTheme: FreshPressOutlinedButton.lightOutlinedButtonTheme,
    bottomSheetTheme: FreshPressBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: FreshPressTextFormFieldTheme.lightInputDecorationTheme
  );


  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.nunito().fontFamily,
    brightness: Brightness.dark,
    primaryColor: FreshPressAppColors.primary,
    scaffoldBackgroundColor: Colors.black,
    textTheme: FreshPressTextTheme.darkTextTheme,
    chipTheme: FreshPressChipTheme.darkChipTheme,
    elevatedButtonTheme: FreshPressElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: FreshPressAppBarTheme.darkAppBarTheme,
    checkboxTheme: FreshPressCheckboxTheme.darkChechboxTheme,
    outlinedButtonTheme: FreshPressOutlinedButton.darkOutlinedButtonTheme,
    bottomSheetTheme: FreshPressBottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: FreshPressTextFormFieldTheme.darkInputDecorationTheme
  );
}
