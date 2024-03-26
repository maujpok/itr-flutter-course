import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:itr_course_app/domain/models/user_model.dart';
import 'package:itr_course_app/domain/repositories/users/users_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  UsersRepository usersRepository;

  HomeBloc({required this.usersRepository}) : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) {});
    on<SetHomeIndexEvent>(_onSetHomeIndexEvent);
    on<FetchAllUsersEvent>(_onFetchAllUsersEvent);
  }

  FutureOr<void> _onFetchAllUsersEvent(event, emit) async {
    final response = await usersRepository.getUsers();
    if (response != null) {
      emit(state.copyWith(
        users: response,
      ));
    }
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
