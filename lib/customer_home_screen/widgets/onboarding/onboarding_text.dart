import 'package:flutter/material.dart';
import 'package:freshpress/util/constants/sizes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Add this import

class OnboardingText extends StatelessWidget {
  const OnboardingText({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: FreshPressSizes.defaultSpace.w, // responsive horizontal padding
        vertical: 16.h, // responsive vertical padding
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 30.sp, // responsive font size
              fontWeight: FontWeight.w600,
              letterSpacing: -0.04,
              height: 1.2, 
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12.h), // also made this responsive
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 18.sp, // responsive font size
              fontWeight: FontWeight.w400,
              color: Color(0xFF4D5C5F), // using a grey color for better readability
              height: 1.3, // line height for better spacing
              letterSpacing: -0.04,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
