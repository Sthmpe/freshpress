import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshpress/util/constants/colors.dart';

class FreshPressOutlinedButton {
  FreshPressOutlinedButton._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: FreshPressAppColors.primary),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
      textStyle: TextStyle(fontSize: 16.sp, color: Colors.black, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: const BorderSide(color: FreshPressAppColors.primary),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
      textStyle: TextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
    ),
  );
}
