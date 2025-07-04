import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshpress/util/constants/colors.dart';

class PromotionalBanner extends StatelessWidget {
  const PromotionalBanner({super.key});

 @override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 18.0, right: 18, top: 32),
    child: Stack(
      children: [
        // Background Container
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FreshPressAppColors.primary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "assets/images/image 22.png",
              height: 141,
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Offer Button
        Positioned(
          bottom: 10,
          left: 15,
          child: Container(
            width: 100,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Color(0xFFF2F8FF)
              ),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                'View Offers',
                style: TextStyle(
                  color: FreshPressAppColors.primary,
                  fontSize: 14,
                  height: 24 / 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.32,
                ),
              ),
            ),
          )
        ),

        // Decorative SVGs
        Positioned(
          right: 70,
          top: 10,
          child: SvgPicture.asset("assets/images/18-1.svg"),
        ),
        Positioned(
          right: 74,
          top: 45,
          child: SvgPicture.asset("assets/images/18.svg"),
        ),

        // Duplicated and scattered 18-2.svg
        // Top-left area
        Positioned(top: 8, left: 12, child: SvgPicture.asset("assets/images/18-2.svg")),
        Positioned(top: 32, left: 60, child: SvgPicture.asset("assets/images/18-2.svg")),

        // Top-right area
        Positioned(top: 12, right: 20, child: SvgPicture.asset("assets/images/18-2.svg")),
        Positioned(top: 50, right: 65, child: SvgPicture.asset("assets/images/18-2.svg")),

        // Middle (center-left and center-right)
        Positioned(top: 70, left: 25, child: SvgPicture.asset("assets/images/18-2.svg")),
        //Positioned(top: 75, right: 35, child: SvgPicture.asset("assets/images/18-2.svg")),

        // Bottom-left area
        Positioned(bottom: 18, left: 16, child: SvgPicture.asset("assets/images/18-2.svg")),
        Positioned(bottom: 45, left: 85, child: SvgPicture.asset("assets/images/18-2.svg")),

        // Bottom-right area
        //Positioned(bottom: 22, right: 25, child: SvgPicture.asset("assets/images/18-2.svg")),
        //Positioned(bottom: 40, right: 80, child: SvgPicture.asset("assets/images/18-2.svg")),

        // Far edges
        Positioned(bottom: 5, left: 110, child: SvgPicture.asset("assets/images/18-2.svg")),
        Positioned(top: 5, right: 100, child: SvgPicture.asset("assets/images/18-2.svg")),
              


        // Promotional Text
        Positioned(
          left: 15,
          top: 18.5,
          child: SizedBox(
            width: 200,
            child: Text(
              "20% off our premium washing services",
              maxLines: 2,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                height: 24 / 20,
                letterSpacing: -0.32,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

}