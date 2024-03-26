import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:itr_course_app/app/app.dart';
import 'package:itr_course_app/domain/repositories/todos/todos_repository.dart';
import 'package:itr_course_app/domain/repositories/todos/todos_repository_impl.dart';
import 'package:itr_course_app/domain/repositories/users/users_repository.dart';
import 'package:itr_course_app/domain/repositories/users/users_repository_impl.dart';
import 'package:itr_course_app/infraestructure/resources/todos_resource.dart';
import 'package:itr_course_app/infraestructure/resources/users_resource.dart';
import 'package:itr_course_app/ui/features/home/bloc/home_bloc.dart';
import 'package:itr_course_app/ui/features/todos/bloc/todos_bloc.dart';

final sl = GetIt.instance;

void main() {
  sl
    ..registerLazySingleton<UserResource>(() => UserResource())
    ..registerLazySingleton<TodosResource>(() => TodosResource())
    ..registerLazySingleton<UsersRepository>(
      () => UsersRepositoryImpl(
        userResource: sl(),
      ),
    )
    ..registerLazySingleton<TodosRepository>(
      () => TodosRepositoryImpl(todosResource: sl()),
    )
    ..registerFactory(
      () => HomeBloc(usersRepository: sl()),
    )
    ..registerFactory(
      () => TodosBloc(todosRepository: sl()),
    );

  runApp(const App());
}
