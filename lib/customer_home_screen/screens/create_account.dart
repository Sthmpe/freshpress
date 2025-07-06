import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshpress/bloc/create_account_bloc/create_account_bloc.dart';
import 'package:freshpress/bloc/create_account_bloc/create_account_event.dart';
import 'package:freshpress/bloc/create_account_bloc/create_account_state.dart';
import 'package:freshpress/customer_home_screen/widgets/create_account.dart/create_account_page.dart';
import 'package:freshpress/util/constants/colors.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CreateAccountBloc(),
      child: BlocBuilder<CreateAccountBloc, CreateAccountState>(
        builder: (context, state) {
            final bloc = context.read<CreateAccountBloc>();
      
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  // 🟡 Smooth Page Indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      final isActive = index == state.currentPage; // issue with currentPageIndex
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        curve: Curves.easeInOut,
                        width: isActive ? 110.w : 106.w,
                        height: 9.h,
                        decoration: BoxDecoration(
                          color:
                              isActive
                                  ? FreshPressAppColors.primary
                                  : Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      );
                    }),
                  ),

                  SizedBox(height: 60.h),

                  // 🟡 PageView for Create Account Pages
                  Expanded(
                    child: PageView(
                      controller: bloc.pageController,
                      onPageChanged: (index) => bloc.add(CreateAccountPageChanged(pageIndex: index)),
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        CreateAccountPage(),
                        CreateAccountPage(), // Placeholder for the second page
                        CreateAccountPage(), // Placeholder for the third page
                      
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
