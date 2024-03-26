part of 'home_bloc.dart';

class HomeEvent {}

class SetHomeIndexEvent extends HomeEvent {
  SetHomeIndexEvent({required this.index});
  final int index;
}

class FetchAllUsersEvent extends HomeEvent {}

class FetchSingleUsersEvent extends HomeEvent {
  FetchSingleUsersEvent({required this.userId});
  final int userId;
}
