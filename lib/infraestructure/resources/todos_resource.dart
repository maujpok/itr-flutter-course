// ignore_for_file: avoid_print
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:itr_course_app/domain/models/todo_model.dart';

class TodosResource {
  final dio = Dio();

  Future<List<ToDoModel>?> getToDos() async {
    const url = 'https://jsonplaceholder.typicode.com/todos';
    try {
      final response = await dio.get(url);
      final todoList = toDoModelFromJson(json.encode(response.data));
      return todoList;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
