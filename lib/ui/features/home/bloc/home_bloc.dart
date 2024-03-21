import 'dart:async';
import 'package:bloc/bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) {});
    on<SetHomeIndexEvent>(_onSetHomeIndexEvent);
  }

  FutureOr<void> _onSetHomeIndexEvent(
    SetHomeIndexEvent event,
    Emitter<HomeState> emit,
  ) {
    emit(
      state.copyWith(
        index: event.index,
        pageName: event.index == 0
            ? 'Default'
            : event.index == 1
                ? 'Home'
                : 'DisplayWidgets',
      ),
    );
    print('hola soy bloc');
  }
}
