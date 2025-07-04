import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshpress/util/constants/sizes.dart';
//import 'package:freshpress/util/helpers/helper_functions.dart';

class OnBoardingPageImage extends StatelessWidget {
  const OnBoardingPageImage({
    super.key, 
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(FreshPressSizes.defaultSpace.r),
      child: Image(
        image: AssetImage(image),
      ),
    );
  }
}