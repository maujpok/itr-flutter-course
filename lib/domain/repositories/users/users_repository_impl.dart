import 'package:itr_course_app/domain/models/user_model.dart';
import 'package:itr_course_app/domain/repositories/users/users_repository.dart';
import 'package:itr_course_app/infraestructure/resources/users_resource.dart';

class UsersRepositoryImpl implements UsersRepository {
  UserResource userResource;

  UsersRepositoryImpl({required this.userResource});

  @override
  Future<List<UserModel>?> getUsers() {
    return userResource.getUsers();
  }

  @override
  Future<UserModel?> getUserById({required int id, String? other}) {
    return userResource.getUserById(id: id, other: 'asdasdasd');
  }
}
