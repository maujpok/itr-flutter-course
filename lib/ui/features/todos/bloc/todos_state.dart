part of 'todos_bloc.dart';

class TodosState {
  const TodosState({
    required this.loading,
    this.toDos,
  });

  final bool loading;
  final List<ToDoModel>? toDos;

  TodosState copyWith({
    bool? loading,
    List<ToDoModel>? toDos,
  }) {
    return TodosState(
      loading: loading ?? this.loading,
      toDos: toDos ?? this.toDos,
    );
  }

  factory TodosState.initial() => const TodosState(loading: false);
}
