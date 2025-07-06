import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshpress/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:freshpress/customer_home_screen/screens/onboarding.dart';
//import 'package:freshpress/navigation_menu.dart';
import 'package:freshpress/util/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => NavigationBloc())],
      child: ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          // Initialize any necessary services or providers here
          return GetMaterialApp(
            themeMode: ThemeMode.system,
            theme: FreshPressAppTheme.lightTheme,
            home: child,
            debugShowCheckedModeBanner: false,//08103694460
          );
        },
        child: OnBoardingScreen(),
      ),
    );
  }
}
