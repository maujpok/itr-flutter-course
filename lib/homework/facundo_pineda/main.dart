import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:itr_course_app/app/app.dart';
import 'package:itr_course_app/homework/facundo_pineda/domain/repositories/users_repository.dart';
import 'package:itr_course_app/homework/facundo_pineda/domain/repositories/users_repository_impl.dart';
import 'package:itr_course_app/homework/facundo_pineda/infrastructure/users_typicode_resource.dart';
import 'package:itr_course_app/homework/facundo_pineda/ui/bloc/home_bloc.dart';

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
