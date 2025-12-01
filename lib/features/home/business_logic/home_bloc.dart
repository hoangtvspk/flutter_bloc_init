import 'package:bui_bloc/core/models/status/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<_Started>(_onStarted);
    on<_IncrementCounter>(_onIncrementCounter);
    on<_DecrementCounter>(_onDecrementCounter);
    on<_RefreshData>(_onRefreshData);
  }

  Future<void> _onStarted(_Started event, Emitter<HomeState> emit) async {
    emit(state.copyWith(
      statusLoadData: const Status.loading(),
    ));

    // Simulate loading data
    await Future.delayed(const Duration(seconds: 1));

    final features = [
      'State Management',
      'Event Handling',
      'Status Tracking',
      'Reactive UI',
    ];

    emit(state.copyWith(
      features: features,
      statusLoadData: const Status.success(),
    ));
  }

  void _onIncrementCounter(
    _IncrementCounter event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(
      counter: state.counter + 1,
    ));
  }

  void _onDecrementCounter(
    _DecrementCounter event,
    Emitter<HomeState> emit,
  ) {
    if (state.counter > 0) {
      emit(state.copyWith(
        counter: state.counter - 1,
      ));
    }
  }

  Future<void> _onRefreshData(
    _RefreshData event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
      statusRefreshData: const Status.loading(),
    ));

    // Simulate refresh
    await Future.delayed(const Duration(seconds: 1));

    emit(state.copyWith(
      statusRefreshData: const Status.success(),
    ));

    // Reset to idle after showing success
    await Future.delayed(const Duration(milliseconds: 500));
    emit(state.copyWith(
      statusRefreshData: const Status.idle(),
    ));
  }
}
