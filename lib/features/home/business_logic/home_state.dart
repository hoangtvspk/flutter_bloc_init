part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(0) int counter,
    @Default([]) List<String> features,
    @Default(Status.idle()) Status statusLoadData,
    @Default(Status.idle()) Status statusRefreshData,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState();
}
