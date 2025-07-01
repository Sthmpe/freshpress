import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:freshpress/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:freshpress/bloc/navigation_bloc/navigation_event.dart';
import 'package:freshpress/bloc/navigation_bloc/navigation_state.dart';
import 'package:freshpress/customer_home_screen/screens/home_page.dart';
import 'package:freshpress/util/constants/colors.dart';
import 'package:freshpress/widgets/navigation_item.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});

  final screens = [
    HomePage(),
    Container(),
    Container(color: FreshPressAppColors.primary),
    Container(color: FreshPressAppColors.primary),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            bottomNavigationBar: NavigationBarTheme(
              data: NavigationBarThemeData(
                labelTextStyle: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.selected)) {
                    return TextStyle(
                      color: FreshPressAppColors.primary,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      height: 16 / 12, // line-height ÷ font-size → 1.33
                      letterSpacing: 0.5,
                    );
                  }
                  return const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: FreshPressAppColors.icon,
                      fontSize: 12,
                      height: 16 / 12, // line-height ÷ font-size → 1.33
                      letterSpacing: 0.5,
                  );
                }),
              ),
              child: BlocBuilder<CartBloc, CartState>(
                builder: (context, cartState) {
                  return NavigationBar(
                    backgroundColor: FreshPressAppColors.white,
                    labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
                    indicatorColor: Colors.transparent,
                    selectedIndex: state.selectedIndex,
                    onDestinationSelected:  (index) {
                      if (index == 1) {
                        // Navigate to CartPage instead of switching tabs
                        Get.to(() => const CartPage());
                        return;
                      }
                      context.read<NavigationBloc>().add(NavigationTabChanged(index));
                    },
                    destinations: [
                      NavigationItem(
                        icon: HugeIcons.strokeRoundedHome07,
                        label: 'Home',
                        index: 0,
                        selectedIndex: state.selectedIndex,
                      ),
                      NavigationItem(
                        icon: HugeIcons.strokeRoundedShoppingCart02,
                        label: 'Cart',
                        index: 1,
                        selectedIndex: state.selectedIndex,
                        badgeCount: cartState.totalItems,
                      ),
                      NavigationItem(
                        icon: HugeIcons.strokeRoundedFavourite,
                        label: 'Favorites',
                        index: 2,
                        selectedIndex: state.selectedIndex,
                      ),
                      NavigationItem(
                        icon: HugeIcons.strokeRoundedUserCircle,
                        label: 'Vendors',
                        index: 3,
                        selectedIndex: state.selectedIndex,
                      ),
                    ],
                  );
                }
              ),
            ),
            body: screens[state.selectedIndex],
          ),
        );
      },
    );
  }
}
