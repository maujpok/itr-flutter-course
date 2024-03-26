import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:itr_course_app/domain/models/todo_model.dart';
import 'package:itr_course_app/domain/repositories/todos/todos_repository.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosRepository todosRepository;
  TodosBloc({required this.todosRepository}) : super(TodosState.initial()) {
    on<TodosEvent>((event, emit) {});
    on<GetToDos>(_onGetTodos);
  }

  FutureOr<void> _onGetTodos(
    GetToDos event,
    Emitter<TodosState> emit,
  ) async {
    emit(state.copyWith(loading: true));
    final response = await todosRepository.getTodos();
    if (response == null) {
      emit(
        state.copyWith(
          loading: false,
          toDos: [],
        ),
      );
    } else {
      emit(
        state.copyWith(
          loading: false,
          toDos: response,
        ),
      );
    }
  }
}
