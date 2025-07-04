import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FreshPressBottomSheetTheme {
  FreshPressBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: BoxConstraints(minHeight: double.infinity.h),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0.r)),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: BoxConstraints(minHeight: double.infinity.h),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0.r)),
  );
}
