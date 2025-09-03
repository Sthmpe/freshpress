import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';
import 'package:flutter/material.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final PageController pageController = PageController();

  OnboardingBloc() : super(OnboardingState(currentPage: 0)) {
    
    on<OnboardingPageChanged>((event, emit) {
      emit(state.copyWith(currentPage: event.pageIndex));
    });

    // Handle page changes
    on<OnboardingNextPage>((event, emit) {
      if (state.currentPage < 2) {
        pageController.nextPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      }
    });
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
