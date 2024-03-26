import 'package:itr_course_app/homework/facundo_pineda/domain/models/user_model.dart';
import 'package:itr_course_app/homework/facundo_pineda/domain/repositories/users_repository.dart';
import 'package:itr_course_app/homework/facundo_pineda/infrastructure/users_typicode_resource.dart';

class UsersRepositoryImpl implements UsersRepository {
  UserResource userResource;

  UsersRepositoryImpl({required this.userResource});

  @override
  Future<List<UserModelTypicode>?> getUsers() {
    return userResource.getUsers();
  }

  @override
  Future<UserModelTypicode?> getUserById({required int id, String? other}) {
    return userResource.getUserById(id: id, other: 'asdasdasd');
  }
}
