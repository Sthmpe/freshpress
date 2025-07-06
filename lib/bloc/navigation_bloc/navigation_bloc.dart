import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freshpress/bloc/navigation_bloc/navigation_event.dart';
import 'package:freshpress/bloc/navigation_bloc/navigation_state.dart';


class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState()) {
    // Initialize the state with default selected index
    on<NavigationTabChanged>((event, emit) {
      emit(NavigationState(selectedIndex: event.index));
    });
  }
}