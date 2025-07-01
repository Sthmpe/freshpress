import 'package:flutter/material.dart';

class FreshPressAppBarTheme {
  FreshPressAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: FreshPressAppColors.black, size: FreshPressSizes.iconSm),
    actionsIconTheme: IconThemeData(color: FreshPressAppColors.black, size: FreshPressSizes.iconSm),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: FreshPressAppColors.black)
  );

   static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: FreshPressAppColors.white, size: FreshPressSizes.iconSm),
    actionsIconTheme: IconThemeData(color: FreshPressAppColors.white, size: FreshPressSizes.iconSm),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: FreshPressAppColors.white)
  );
}