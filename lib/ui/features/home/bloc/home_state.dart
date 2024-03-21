part of 'home_bloc.dart';

class HomeState {
  const HomeState({
    this.index,
    this.pageName,
  });

  final int? index;
  final String? pageName;

  HomeState copyWith({
    final int? index,
    final String? pageName,
  }) {
    return HomeState(
      index: index ?? this.index,
      pageName: pageName ?? this.pageName,
    );
  }

  factory HomeState.initial() => const HomeState(
        index: 1,
      );
}
