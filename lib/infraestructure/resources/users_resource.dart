// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:itr_course_app/domain/models/user_model.dart';

class UserResource {
  final dio = Dio();

  Future<List<UserModel>?> getUsers() async {
    const url = 'https://jsonplaceholder.typicode.com/users';
    try {
      final response = await dio.get(url);
      final usersList = userModelFromJson(json.encode(response.data));
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
    final url = 'https://jsonplaceholder.typicode.com/users/$id';
  }
}
