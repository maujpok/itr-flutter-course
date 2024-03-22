// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:itr_course_app/homework/facundo_pineda/domain/models/user_model.dart';

class UserResource {
  final dio = Dio();

  Future<List<UserModelTypicode>?> getUsers() async {
    const url = 'https://jsonplaceholder.typicode.com/users';
    try {
      final response = await dio.get(url);
      final usersList = userModelTypicodeFromJson(response.data);
      print(usersList.first.toJson());
      return usersList;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<UserModelTypicode?> getUserById({
    required int id,
    String? other,
  }) async {
    final url = 'https://jsonplaceholder.typicode.com/users/$id';
  }
}
