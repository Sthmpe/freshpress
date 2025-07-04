import 'package:flutter/material.dart';
import 'package:freshpress/util/constants/colors.dart';

class FreshPressPrimaryHeaderContainer extends StatelessWidget {
  const FreshPressPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: FreshPressAppColors.white,
        padding: const EdgeInsets.all(0),
        child: child,
    );
  }
}
