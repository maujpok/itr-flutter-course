import 'package:itr_course_app/domain/models/todo_model.dart';

abstract class TodosRepository {
  Future<List<ToDoModel>?> getTodos();
}
