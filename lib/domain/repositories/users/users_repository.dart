import 'package:itr_course_app/domain/models/user_model.dart';

abstract class UsersRepository {
  Future<List<UserModel>?> getUsers();

  Future<UserModel?> getUserById({
    required int id,
    String? other,
  });
}
