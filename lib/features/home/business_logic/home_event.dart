part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.incrementCounter() = _IncrementCounter;
  const factory HomeEvent.decrementCounter() = _DecrementCounter;
  const factory HomeEvent.refreshData() = _RefreshData;
}
