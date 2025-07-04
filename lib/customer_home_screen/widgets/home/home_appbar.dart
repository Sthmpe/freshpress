import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshpress/util/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(8),
            child: SvgPicture.asset(
              width: 34,
              height: 34,
              'assets/icons/Selection Menu.svg',
            ),
          ),
          Row(
            children: [
              Text(
                'Ikeja, Lagos',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF3F4247),
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  height: 28 / 18,
                  letterSpacing: -0.32,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Iconsax.arrow_down_1,
                size: 18,
                weight: 1.5,
                color: Color(0xFF3F4247),
              )
            ],
          ),
          Container(
            width: 40,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
            decoration: BoxDecoration(
              color: FreshPressAppColors.primary,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                'D',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  height: 28 / 18,
                  color: Colors.white,
                  letterSpacing: -0.32,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
