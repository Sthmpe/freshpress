import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshpress/bloc/carousel_cubit.dart';
import 'package:freshpress/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:freshpress/bloc/navigation_bloc/navigation_event.dart';
import 'package:freshpress/bloc/navigation_bloc/navigation_state.dart';
import 'package:freshpress/customer_home_screen/screens/home_page.dart';
import 'package:freshpress/util/constants/colors.dart';
import 'package:freshpress/util/constants/sizes.dart';
import 'package:freshpress/widgets/navigation_item.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});

  final screens = [
    BlocProvider(
      create: (_) => CarouselCubit(), 
      child: HomePage()
    ),
    Container(color: FreshPressAppColors.primary),
    Container(color: FreshPressAppColors.primary),
    Container(color: FreshPressAppColors.primary),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return Scaffold(
          primary: false,
          backgroundColor: Colors.white,
          bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
              overlayColor: WidgetStateColor.resolveWith((states) {
                return Colors.transparent;
              }),
              labelPadding: EdgeInsets.all(0),
              labelTextStyle: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 0,
                    height: 0, // line-height ÷ font-size → 1.33
                  );
                }
                return const TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 0,
                  height: 0, // line-height ÷ font-size → 1.33
                );
              }),
            ),
            child: NavigationBar(
              height: 85,
              backgroundColor: FreshPressAppColors.white,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
              indicatorShape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(35),
              ),
              indicatorColor: Colors.transparent,
              selectedIndex: state.selectedIndex,
              onDestinationSelected: (index) {
                context.read<NavigationBloc>().add(
                  NavigationTabChanged(index),
                );
              },
              destinations: [
                NavigationItem(
                  icon:
                      state.selectedIndex == 0
                          ? SvgPicture.asset(
                            width: 24,
                            height: 24,
                            'assets/icons/home-2.svg',
                          )
                          : Icon(
                            Iconsax.home_2,
                            size: FreshPressSizes.iconMd,
                            weight: 1.5,
                            color: FreshPressAppColors.icon,
                          ),
                  label: 'Home',
                  index: 0,
                  selectedIndex: state.selectedIndex,
                ),
                NavigationItem(
                  icon: Icon(
                    Iconsax.document,
                    size: FreshPressSizes.iconMd,
                    weight: 1.5,
                    color:
                        state.selectedIndex == 1
                            ? FreshPressAppColors.primary
                            : FreshPressAppColors.icon,
                  ),
                  label: 'Orders',
                  index: 1,
                  selectedIndex: state.selectedIndex,
                ),
                NavigationItem(
                  icon: Icon(
                    Iconsax.messages,
                    size: FreshPressSizes.iconMd,
                    weight: 1.5,
                    color:
                        state.selectedIndex == 2
                            ? FreshPressAppColors.primary
                            : FreshPressAppColors.icon,
                  ),
                  label: 'Support',
                  index: 2,
                  selectedIndex: state.selectedIndex,
                ),
                NavigationItem(
                  icon: Icon(
                    Iconsax.user,
                    size: FreshPressSizes.iconMd,
                    weight: 1.5,
                    color:
                        state.selectedIndex == 3
                            ? FreshPressAppColors.primary
                            : FreshPressAppColors.icon,
                  ),
                  label: 'Profile',
                  index: 3,
                  selectedIndex: state.selectedIndex,
                ),
              ],
            ),
          ),
          body: screens[state.selectedIndex],
        );
      },
    );
  }
}
