import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:freshpress/util/constants/colors.dart';


class AgentContainer extends StatelessWidget {
  AgentContainer({
    super.key,
    required this.businessName,
    required this.profileImage,
    required this.location,
    required this.ranking,
    required this.charges,
  });

  final String businessName;
  final String profileImage;
  final String location;
  final double ranking;
  final double charges; // Example charge value
  final List<Color> backgroundColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.orange,
    Colors.teal,
    Colors.pink,
  ];

  final List<String> kmaway = [
    '1 km away',
    '1.3 km away',
    '2.1 km away',
    '500 m away',
    '3.1 km away',
    '1.2 km away',
    '2.6 km away',
    '800.4 m away',
  ];

  final List<int> reviewCounts = [
    120,
    200,
    1000,
    600,
    1000000,
    2000000,
    100000000,
    300000,
    2000,
    300,
    7,
  ];

  String formatNumber(int number) {
      if (number >= 1000000) {
        double value = number / 1000000;
        return value % 1 == 0
            ? '${value.toInt()}m'
            : '${value.toStringAsFixed(1)}m';
      } else if (number >= 1000) {
        double value = number / 1000;
        return value % 1 == 0
            ? '${value.toInt()}k'
            : '${value.toStringAsFixed(1)}k';
      } else {
        return number.toString();
      }
    }

  String getRandomDistance(String businessName) {
    final random = Random(businessName.hashCode);
    return kmaway[random.nextInt(kmaway.length)];
  }

  String getReviewCount(String businessName) {
  final random = Random(businessName.hashCode);
  final count = reviewCounts[random.nextInt(reviewCounts.length)];
  return formatNumber(count);
}

  Widget agentAvatar(businessName, profileImage) {
    if (profileImage.isNotEmpty) {
      return CircleAvatar(
        backgroundImage: AssetImage(profileImage),
        radius: 24,
      );
    }

    final initial = businessName.isNotEmpty ? businessName[0].toUpperCase() : '?';
    final random = Random(businessName.hashCode); // consistent color per name
    final color = backgroundColors[random.nextInt(backgroundColors.length)];

    return CircleAvatar(
      radius: 24,
      backgroundColor: color.withOpacity(0.1),
      child: Text(
        initial,
        style: TextStyle(
          color: color, 
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(top: 16, left: 18, right: 18),
      decoration: BoxDecoration(
        color: FreshPressAppColors.primarylight ,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              agentAvatar(businessName, profileImage),
              SizedBox(width: 10),
              // Business name and location
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Business name
                  Text(
                    businessName,
                    style: TextStyle(
                      color: FreshPressAppColors.primary,
                      fontSize: 15, 
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 2),
                  // Charges and ranking
                  Row(
                    children: [
                      Text(
                        '₦${charges.toStringAsFixed(2)} per cloth',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: FreshPressAppColors.black,
                        ),
                      ),
                      SizedBox(width: 4),
                      // Rating bar
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                        decoration: BoxDecoration(
                          color: FreshPressAppColors.orange,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Text(
                                ranking.toString(),
                                style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w600,
                                  color: FreshPressAppColors.white,
                                ),
                              ),
                              SizedBox(width: 2),
                              RatingBarIndicator(
                                rating: ranking,
                                itemBuilder:
                                    (context, index) =>
                                        Icon(
                                          Icons.star, 
                                          color: Colors.white,
                                          weight: 2.0,
                                        ),
                                itemCount: 1,
                                itemSize: 12.0,
                                direction: Axis.horizontal,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  // Distance and location
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_pin,
                        size: 12,
                        color: FreshPressAppColors.primary,
                      ),
                      SizedBox(width: 1),
                      Text(
                        getRandomDistance(businessName),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: FreshPressAppColors.grey
                        ),
                      ),
                      SizedBox(width: 0.5),
                      Center(
                        child: Container(
                          height: 2,
                          width: 2,
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            color: FreshPressAppColors.grey.withOpacity(0.8),
                            //borderRadius: BorderRadius.circular(100),
                            shape: BoxShape.circle
                          ),
                        ),
                      ),
                      SizedBox(width: 0.5),
                      Text(
                        location,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: FreshPressAppColors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),  
          // Booking button
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle booking action
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    backgroundColor: FreshPressAppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Book Now',
                    style: TextStyle(
                      color: FreshPressAppColors.textWhite,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16), // Space between buttons
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle booking action
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    backgroundColor: FreshPressAppColors.primary.withOpacity(0.1),
                    side: BorderSide(
                        color: Colors.transparent,
                      ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Reviews (${getReviewCount(businessName)})',
                    style: TextStyle(
                      color: FreshPressAppColors.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          )        
        ],
      ),
    );
  }
}
