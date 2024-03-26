// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:itr_course_app/domain/models/user_model.dart';

class UserResource {
  final dio = Dio();

  Future<List<UserModel>?> getUsers() async {
    const url = 'https://jsonplaceholder.org/users';
    try {
      final response = await dio.get(url);
      final usersList = userModelListFromJson(response.data);
      print(usersList.first.toJson());
      return usersList;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<UserModel?> getUserById({
    required int id,
    String? other,
  }) async {
    final url = 'https://jsonplaceholder.org/users/$id';
  }
}
