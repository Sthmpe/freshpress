import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // ✅ Import screenutil

class FreshPressTextFormFieldTheme {
  FreshPressTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: TextStyle(fontSize: 14.sp, color: Colors.black), // ✅ responsive
    hintStyle: TextStyle(fontSize: 14.sp, color: Colors.black),   // ✅ responsive
    errorStyle: TextStyle(
      fontSize: 12.sp,
      fontStyle: FontStyle.normal,
    ),
    floatingLabelStyle: TextStyle(
      fontSize: 14.sp,
      color: Colors.black.withOpacity(0.8),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r), // ✅ responsive radius
      borderSide: BorderSide(width: 1.w, color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r),
      borderSide: BorderSide(width: 1.w, color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r),
      borderSide: BorderSide(width: 1.w, color: Colors.black12),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r),
      borderSide: BorderSide(width: 1.w, color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r),
      borderSide: BorderSide(width: 2.w, color: Colors.orange),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: TextStyle(fontSize: 14.sp, color: Colors.white), // ✅ responsive
    hintStyle: TextStyle(fontSize: 14.sp, color: Colors.white),  // ✅ responsive
    errorStyle: TextStyle(
      fontSize: 12.sp,
      fontStyle: FontStyle.normal,
    ),
    floatingLabelStyle: TextStyle(
      fontSize: 14.sp,
      color: Colors.white.withOpacity(0.8),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r),
      borderSide: BorderSide(width: 1.w, color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r),
      borderSide: BorderSide(width: 1.w, color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r),
      borderSide: BorderSide(width: 1.w, color: Colors.white),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r),
      borderSide: BorderSide(width: 1.w, color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14.r),
      borderSide: BorderSide(width: 2.w, color: Colors.orange),
    ),
  );
}
