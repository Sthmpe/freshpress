import 'package:flutter/material.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({
    super.key,
    required this.suggestion
  });
  final String suggestion;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Color(0xFF4D5C5F).withOpacity(0.1),
        border: Border.all(
          width: 0.2,
          color: Color(0xFF4D5C5F),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          suggestion,
          style: TextStyle(
            fontSize: 12,
            height: 1.3,
            letterSpacing: 12 * -0.04,
            fontWeight: FontWeight.w400
          ),
        ),
      ),
    );
  }
}