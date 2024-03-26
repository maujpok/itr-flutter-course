import 'package:itr_course_app/domain/models/todo_model.dart';
import 'package:itr_course_app/domain/repositories/todos/todos_repository.dart';
import 'package:itr_course_app/infraestructure/resources/todos_resource.dart';

class TodosRepositoryImpl implements TodosRepository {
  TodosResource todosResource;
  TodosRepositoryImpl({required this.todosResource});

  @override
  Future<List<ToDoModel>?> getTodos() {
    return todosResource.getToDos();
  }
}
