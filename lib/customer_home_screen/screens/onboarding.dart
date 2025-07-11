import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshpress/bloc/onboarding_bloc/onboarding_bloc.dart';
import 'package:freshpress/bloc/onboarding_bloc/onboarding_event.dart';
import 'package:freshpress/bloc/onboarding_bloc/onboarding_state.dart';
import 'package:freshpress/customer_home_screen/screens/create_account.dart';
import 'package:freshpress/customer_home_screen/widgets/onboarding/onboarding_image.dart';
import 'package:freshpress/customer_home_screen/widgets/onboarding/onboarding_text.dart';
import 'package:freshpress/util/constants/colors.dart';
import 'package:freshpress/util/constants/image_strings.dart';
import 'package:freshpress/util/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> onboardingTexts = [
      {
        "title": FreshPressTexts.onBoardingTitle1,
        "subTitle": FreshPressTexts.onBoardingSubTitle1,
      },
      {
        "title": FreshPressTexts.onBoardingTitle2,
        "subTitle": FreshPressTexts.onBoardingSubTitle2,
      },
      {
        "title": FreshPressTexts.onBoardingTitle3,
        "subTitle": FreshPressTexts.onBoardingSubTitle3,
      },
    ];

    return BlocProvider(
      create: (_) => OnboardingBloc(),
      child: BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
          final bloc = context.read<OnboardingBloc>();

          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                     padding: EdgeInsets.only(
                        left: 5.5.w,
                        right: 5.5.w,
                        top: 97.h,
                      ),
                    child: SizedBox(
                      height: 401.h,
                      width: 347.w,
                      child: PageView(
                        controller: bloc.pageController,
                        onPageChanged:
                            (index) => bloc.add(OnboardingPageChanged(index)),
                        children: [
                          OnBoardingPageImage(
                            image: FreshPressImages.onBoardingImage1,
                          ),
                          OnBoardingPageImage(
                            image: FreshPressImages.onBoardingImage2,
                          ),
                          OnBoardingPageImage(
                            image: FreshPressImages.onBoardingImage3,
                          ),
                        ],
                      ),
                    ),
                  ),
              
                  SizedBox(height: 40.h),
              
                  // 🟡 Smooth Page Indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      final isActive = index == state.currentPage;
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        width: isActive ? 24.w : 8.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color: isActive ? FreshPressAppColors.primary : Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      );
                    }),
                  ),
              
                  SizedBox(height: 28.h),
              
                  // 👇 Onboarding Text (title and subtitle)
                  OnboardingText(
                    title: onboardingTexts[state.currentPage]['title']!,
                    subTitle: onboardingTexts[state.currentPage]['subTitle']!,
                  ),
              
                  SizedBox(height: 28.h),
              
                  // Next Button
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: (state.currentPage == 2) 
                    ? Column(
                        children: [
                          SizedBox(
                            height: 48.h,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => CreateAccountScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 12.h),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                              ),
                              child: Text(
                                'Create a new account',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  fontFamily: GoogleFonts.nunito().fontFamily,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20.sp,
                                  height: 1.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h),
                          SizedBox(
                            height: 48.h,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 12.h),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                              ),
                              child: Text(
                                'Login',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  fontFamily: GoogleFonts.nunito().fontFamily,
                                  color: FreshPressAppColors.primary,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20.sp,
                                  height: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ) 
                    : SizedBox(
                      height: 48.h,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => bloc.add(OnboardingNextPage()),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 11.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                        child: Text(
                          state.currentPage > 0 ? 'Next' : 'Get Started',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: GoogleFonts.nunito().fontFamily,
                            fontWeight: FontWeight.w400,
                            fontSize: 20.sp,
                            height: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
