import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshpress/bloc/create_account_bloc/create_account_bloc.dart';
import 'package:freshpress/bloc/create_account_bloc/create_account_event.dart';
import 'package:freshpress/bloc/create_account_bloc/create_account_state.dart';
import 'package:freshpress/util/constants/colors.dart';
import 'package:freshpress/util/validators/validation.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountPage extends StatelessWidget {
  CreateAccountPage({super.key});

  final _createAccountFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<CreateAccountBloc, CreateAccountState>(
        builder: (context, state) {
            final bloc = context.read<CreateAccountBloc>();
    
    
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Account',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontSize: 30.sp,
                  height: 1.2,
                  letterSpacing: -0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
                  
              SizedBox(height: 40.h),
                  
              Form(
                key: _createAccountFormKey,
                child: SizedBox(
                  height: 48.h,
                  width: double.infinity,
                  child: TextFormField(
                    validator: (value) => FreshPressValidator.validateMobileNo(value),
                    onChanged: (value) => bloc.add(MobileNoChanged(mobileNo: value)),
                    decoration: InputDecoration(
                      labelText: 'Enter your mobile number',
                      labelStyle: TextStyle(
                        fontSize: 18.sp,
                        height: 1.3,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.04,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),
                ),
              ),
                  
              /// create account button
              SizedBox(
                height: 48.h,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(12.0.r),
                  ),
                  onPressed: () {
                    if (state.isLoading) return; // just return if loading
                    if (_createAccountFormKey.currentState!.validate()) {
                      bloc.add(Submitted());
                    }
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Always show text
                      Text(
                        'Confirm Mobile Number',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: GoogleFonts.nunito().fontFamily,
                        ),
                      ),
                  
                      // Show spinner only when loading
                      if (state.isLoading)
                        Positioned(
                          child: SizedBox(
                            height: 35.h,
                            width: 35.w,
                            child: CircularProgressIndicator(
                              padding: EdgeInsets.all(0),
                              color: Colors.white,
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              
              SizedBox(height: 40.h),
                  
              /// divider
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Divider(
                    height: 1.h,
                    thickness: 1.h,
                    color: FreshPressAppColors.grey,
                    indent: 20.w,
                    endIndent: 10.w,
                  ),
                  Text(
                    'or continue with',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: FreshPressAppColors.grey,
                    ),
                  ),
                  Divider(
                    height: 1.h,
                    thickness: 1.h,
                    color: FreshPressAppColors.grey,
                    indent: 20.w,
                    endIndent: 10.w,
                  ),
                ],
              ),
                  
              SizedBox(height: 40.h),
                  
              /// social media buttons
              SizedBox(
                height: 48.h,
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.all(12.0.r),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      side: BorderSide(
                        color: FreshPressAppColors.grey,
                        width: 1.w,
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Handle Facebook login
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/google.svg',
                    height: 32.h,
                    width: 32.w,
                  ),
                  label: Text(
                    'Continue with Facebook',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.nunito().fontFamily,
                    ),
                  ),
                ),
              ),
            ],
          );
      }
    );
  }
}
