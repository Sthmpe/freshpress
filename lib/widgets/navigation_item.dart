import 'package:flutter/material.dart';
import 'package:freshpress/util/constants/colors.dart';

class NavigationItem extends StatelessWidget {
  final Widget icon;
  final String label;
  final int index;
  final int selectedIndex;

  const NavigationItem({
    super.key,
    required this.icon,
    required this.label,
    required this.index,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: SizedBox(
        height: 57,
        width: 49,
        child: Column(
          children: [
            Material(
              borderRadius: BorderRadius.circular(25),
              color: Colors.transparent,
              child: InkWell(
                splashColor: FreshPressAppColors.primary,
                child: Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    //shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(0)
                  ),
                  child: Center(
                    child: icon,
                  ),
                ),
              ),
            ),
            SizedBox(height: 4),
            SizedBox(
              width: double.infinity,
              child: Text(
                label,
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
                style: TextStyle(
                  color:
                      selectedIndex == index
                          ? FreshPressAppColors.primary
                          : FreshPressAppColors.icon,
                  fontWeight:
                      selectedIndex == index ? FontWeight.w600 : FontWeight.w400,
                  fontSize: 14,
                  height: 20 / 14, // line-height ÷ font-size → 1.33
                  letterSpacing: -0.32,
                ),
              ),
            ),
          ],
        ),
      ),
      label: '',
    );
  }
}
