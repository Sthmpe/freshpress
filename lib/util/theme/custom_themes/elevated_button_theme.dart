import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshpress/util/constants/colors.dart';

/// --- Light & Dark Elevated Button Theme
class FreshPressElevatedButtonTheme {
  FreshPressElevatedButtonTheme._();

  /// ---Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: FreshPressAppColors.primary,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: FreshPressAppColors.primary),
      padding: EdgeInsets.symmetric(vertical: 18.h),
      textStyle: TextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
    ),
  );

  /// ---Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: FreshPressAppColors.primary,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: FreshPressAppColors.primary),
      padding: EdgeInsets.symmetric(vertical: 18.h),
      textStyle: TextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
    ),
  );
}
