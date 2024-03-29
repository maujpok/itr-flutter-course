part of 'home_bloc.dart';

class HomeState {
  const HomeState({
    this.index,
    this.pageName,
    this.users,
  });

  final int? index;
  final String? pageName;
  final List<UserModel>? users;

  HomeState copyWith({
    final int? index,
    final String? pageName,
    List<UserModel>? users,
    UserModel? selectedUser,
  }) {
    return HomeState(
      index: index ?? this.index,
      pageName: pageName ?? this.pageName,
      users: users ?? this.users,
    );
  }

  factory HomeState.initial() => const HomeState(
        index: 1,
      );
}
