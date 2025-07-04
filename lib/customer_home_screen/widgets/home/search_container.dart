import 'package:flutter/material.dart';
import 'package:freshpress/util/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: EdgeInsets.only(top: 32, right: 21.5, left: 21.5),
     child: Container(
      height: 48,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF4D5C5F)
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12.0)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Iconsax.search_normal_1,
            size: FreshPressSizes.iconMd,
            weight: 1.5,
            color: Color(0xFF4D5C5F),
          ),
          SizedBox(width: 12),
          Text(
            "What are you looking for?",
            style: TextStyle(
              color: Color(0xFF4D5C5F),
              fontWeight: FontWeight.w400,
              fontSize: 16,
              height: 1.3,
              letterSpacing: 16 * -0.04, 
            ),
          )
        ]),
     ),
   );
  }
}