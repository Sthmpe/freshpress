import 'package:flutter_bloc/flutter_bloc.dart';


class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState()) {
    on<NavigationTabChanged>((event, emit) {
      emit(NavigationState(selectedIndex: event.index));
    });
  }
}