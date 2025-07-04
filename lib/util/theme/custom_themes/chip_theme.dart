import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshpress/util/constants/colors.dart';

class FreshPressChipTheme {
  FreshPressChipTheme._();

  static ChipThemeData lightChipTheme =  ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: FreshPressAppColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 12.0.h),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme =  ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor: FreshPressAppColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 12.0.h),
    checkmarkColor: Colors.white,
  );
}