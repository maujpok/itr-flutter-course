import 'package:itr_course_app/homework/facundo_pineda/domain/models/user_model.dart';

abstract class UsersRepository {
  Future<List<UserModelTypicode>?> getUsers();

  Future<UserModelTypicode?> getUserById({
    required int id,
    String? other,
  });
}
