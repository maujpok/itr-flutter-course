import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:itr_course_app/app/app.dart';
import 'package:itr_course_app/domain/repositories/users/users_repository.dart';
import 'package:itr_course_app/domain/repositories/users/users_repository_impl.dart';
import 'package:itr_course_app/infraestructure/resources/users_resource.dart';
import 'package:itr_course_app/ui/features/home/bloc/home_bloc.dart';

final sl = GetIt.instance;

void main() {
  sl
    ..registerLazySingleton<UserResource>(() => UserResource())
    ..registerLazySingleton<UsersRepository>(
      () => UsersRepositoryImpl(
        userResource: sl(),
      ),
    )
    ..registerFactory(
      () => HomeBloc(usersRepository: sl()),
    );

  runApp(const App());
}
