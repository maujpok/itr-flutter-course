part of 'home_bloc.dart';

class HomeEvent {}

class SetHomeIndexEvent extends HomeEvent {
  SetHomeIndexEvent({required this.index});
  final int index;
}

class FetchAllUsersEvent extends HomeEvent {}


class FetchUserByIDEvent extends HomeEvent {
  FetchUserByIDEvent({required this.id});
  final int id;
}
