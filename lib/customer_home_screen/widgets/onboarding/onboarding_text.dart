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
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h), // also made this responsive
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
