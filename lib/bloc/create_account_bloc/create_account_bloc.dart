


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freshpress/bloc/create_account_bloc/create_account_event.dart';
import 'package:freshpress/bloc/create_account_bloc/create_account_state.dart';
import 'package:freshpress/util/validators/validation.dart';

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  final PageController pageController = PageController();
  
  CreateAccountBloc() : super(CreateAccountState.initial()) {

    // Listening to events and updating the state accordingly
    on<MobileNoChanged>((event, emit) {
      final isValid = FreshPressValidator.validateMobileNo(event.mobileNo) == null;

      emit(state.copyWith(mobileNo: event.mobileNo, isValid: isValid));
    });

    // Handle form submission
    on<Submitted>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      // Simulate a network call or any processing
      await Future.delayed(Duration(seconds: 2));

      emit(state.copyWith(isLoading: false));

       // Move to next page if not the last page
      if (pageController.hasClients && state.currentPage < 2) {
        final nextPage = state.currentPage + 1;
        pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );

        // Update state so smooth indicator reflects it
        emit(state.copyWith(currentPage: nextPage));
      }
      // TODO: handle navigation or success state
    });

    // Handle page changes
    on<CreateAccountPageChanged>((event, emit) {
      emit(state.copyWith(currentPage: event.pageIndex));
    });
  }
}