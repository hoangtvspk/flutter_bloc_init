// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() incrementCounter,
    required TResult Function() decrementCounter,
    required TResult Function() refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? incrementCounter,
    TResult? Function()? decrementCounter,
    TResult? Function()? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? incrementCounter,
    TResult Function()? decrementCounter,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IncrementCounter value) incrementCounter,
    required TResult Function(_DecrementCounter value) decrementCounter,
    required TResult Function(_RefreshData value) refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IncrementCounter value)? incrementCounter,
    TResult? Function(_DecrementCounter value)? decrementCounter,
    TResult? Function(_RefreshData value)? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IncrementCounter value)? incrementCounter,
    TResult Function(_DecrementCounter value)? decrementCounter,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() incrementCounter,
    required TResult Function() decrementCounter,
    required TResult Function() refreshData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? incrementCounter,
    TResult? Function()? decrementCounter,
    TResult? Function()? refreshData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? incrementCounter,
    TResult Function()? decrementCounter,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IncrementCounter value) incrementCounter,
    required TResult Function(_DecrementCounter value) decrementCounter,
    required TResult Function(_RefreshData value) refreshData,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IncrementCounter value)? incrementCounter,
    TResult? Function(_DecrementCounter value)? decrementCounter,
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IncrementCounter value)? incrementCounter,
    TResult Function(_DecrementCounter value)? decrementCounter,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$IncrementCounterImplCopyWith<$Res> {
  factory _$$IncrementCounterImplCopyWith(_$IncrementCounterImpl value,
          $Res Function(_$IncrementCounterImpl) then) =
      __$$IncrementCounterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncrementCounterImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$IncrementCounterImpl>
    implements _$$IncrementCounterImplCopyWith<$Res> {
  __$$IncrementCounterImplCopyWithImpl(_$IncrementCounterImpl _value,
      $Res Function(_$IncrementCounterImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IncrementCounterImpl implements _IncrementCounter {
  const _$IncrementCounterImpl();

  @override
  String toString() {
    return 'HomeEvent.incrementCounter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IncrementCounterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() incrementCounter,
    required TResult Function() decrementCounter,
    required TResult Function() refreshData,
  }) {
    return incrementCounter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? incrementCounter,
    TResult? Function()? decrementCounter,
    TResult? Function()? refreshData,
  }) {
    return incrementCounter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? incrementCounter,
    TResult Function()? decrementCounter,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (incrementCounter != null) {
      return incrementCounter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IncrementCounter value) incrementCounter,
    required TResult Function(_DecrementCounter value) decrementCounter,
    required TResult Function(_RefreshData value) refreshData,
  }) {
    return incrementCounter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IncrementCounter value)? incrementCounter,
    TResult? Function(_DecrementCounter value)? decrementCounter,
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return incrementCounter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IncrementCounter value)? incrementCounter,
    TResult Function(_DecrementCounter value)? decrementCounter,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (incrementCounter != null) {
      return incrementCounter(this);
    }
    return orElse();
  }
}

abstract class _IncrementCounter implements HomeEvent {
  const factory _IncrementCounter() = _$IncrementCounterImpl;
}

/// @nodoc
abstract class _$$DecrementCounterImplCopyWith<$Res> {
  factory _$$DecrementCounterImplCopyWith(_$DecrementCounterImpl value,
          $Res Function(_$DecrementCounterImpl) then) =
      __$$DecrementCounterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DecrementCounterImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DecrementCounterImpl>
    implements _$$DecrementCounterImplCopyWith<$Res> {
  __$$DecrementCounterImplCopyWithImpl(_$DecrementCounterImpl _value,
      $Res Function(_$DecrementCounterImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DecrementCounterImpl implements _DecrementCounter {
  const _$DecrementCounterImpl();

  @override
  String toString() {
    return 'HomeEvent.decrementCounter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DecrementCounterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() incrementCounter,
    required TResult Function() decrementCounter,
    required TResult Function() refreshData,
  }) {
    return decrementCounter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? incrementCounter,
    TResult? Function()? decrementCounter,
    TResult? Function()? refreshData,
  }) {
    return decrementCounter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? incrementCounter,
    TResult Function()? decrementCounter,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (decrementCounter != null) {
      return decrementCounter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IncrementCounter value) incrementCounter,
    required TResult Function(_DecrementCounter value) decrementCounter,
    required TResult Function(_RefreshData value) refreshData,
  }) {
    return decrementCounter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IncrementCounter value)? incrementCounter,
    TResult? Function(_DecrementCounter value)? decrementCounter,
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return decrementCounter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IncrementCounter value)? incrementCounter,
    TResult Function(_DecrementCounter value)? decrementCounter,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (decrementCounter != null) {
      return decrementCounter(this);
    }
    return orElse();
  }
}

abstract class _DecrementCounter implements HomeEvent {
  const factory _DecrementCounter() = _$DecrementCounterImpl;
}

/// @nodoc
abstract class _$$RefreshDataImplCopyWith<$Res> {
  factory _$$RefreshDataImplCopyWith(
          _$RefreshDataImpl value, $Res Function(_$RefreshDataImpl) then) =
      __$$RefreshDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RefreshDataImpl>
    implements _$$RefreshDataImplCopyWith<$Res> {
  __$$RefreshDataImplCopyWithImpl(
      _$RefreshDataImpl _value, $Res Function(_$RefreshDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshDataImpl implements _RefreshData {
  const _$RefreshDataImpl();

  @override
  String toString() {
    return 'HomeEvent.refreshData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() incrementCounter,
    required TResult Function() decrementCounter,
    required TResult Function() refreshData,
  }) {
    return refreshData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? incrementCounter,
    TResult? Function()? decrementCounter,
    TResult? Function()? refreshData,
  }) {
    return refreshData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? incrementCounter,
    TResult Function()? decrementCounter,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IncrementCounter value) incrementCounter,
    required TResult Function(_DecrementCounter value) decrementCounter,
    required TResult Function(_RefreshData value) refreshData,
  }) {
    return refreshData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_IncrementCounter value)? incrementCounter,
    TResult? Function(_DecrementCounter value)? decrementCounter,
    TResult? Function(_RefreshData value)? refreshData,
  }) {
    return refreshData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IncrementCounter value)? incrementCounter,
    TResult Function(_DecrementCounter value)? decrementCounter,
    TResult Function(_RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData(this);
    }
    return orElse();
  }
}

abstract class _RefreshData implements HomeEvent {
  const factory _RefreshData() = _$RefreshDataImpl;
}

/// @nodoc
mixin _$HomeState {
  int get counter => throw _privateConstructorUsedError;
  List<String> get features => throw _privateConstructorUsedError;
  Status get statusLoadData => throw _privateConstructorUsedError;
  Status get statusRefreshData => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {int counter,
      List<String> features,
      Status statusLoadData,
      Status statusRefreshData});

  $StatusCopyWith<$Res> get statusLoadData;
  $StatusCopyWith<$Res> get statusRefreshData;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? features = null,
    Object? statusLoadData = null,
    Object? statusRefreshData = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      statusLoadData: null == statusLoadData
          ? _value.statusLoadData
          : statusLoadData // ignore: cast_nullable_to_non_nullable
              as Status,
      statusRefreshData: null == statusRefreshData
          ? _value.statusRefreshData
          : statusRefreshData // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusLoadData {
    return $StatusCopyWith<$Res>(_value.statusLoadData, (value) {
      return _then(_value.copyWith(statusLoadData: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get statusRefreshData {
    return $StatusCopyWith<$Res>(_value.statusRefreshData, (value) {
      return _then(_value.copyWith(statusRefreshData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int counter,
      List<String> features,
      Status statusLoadData,
      Status statusRefreshData});

  @override
  $StatusCopyWith<$Res> get statusLoadData;
  @override
  $StatusCopyWith<$Res> get statusRefreshData;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? features = null,
    Object? statusLoadData = null,
    Object? statusRefreshData = null,
  }) {
    return _then(_$HomeStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      statusLoadData: null == statusLoadData
          ? _value.statusLoadData
          : statusLoadData // ignore: cast_nullable_to_non_nullable
              as Status,
      statusRefreshData: null == statusRefreshData
          ? _value.statusRefreshData
          : statusRefreshData // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.counter = 0,
      final List<String> features = const [],
      this.statusLoadData = const Status.idle(),
      this.statusRefreshData = const Status.idle()})
      : _features = features;

  @override
  @JsonKey()
  final int counter;
  final List<String> _features;
  @override
  @JsonKey()
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  @JsonKey()
  final Status statusLoadData;
  @override
  @JsonKey()
  final Status statusRefreshData;

  @override
  String toString() {
    return 'HomeState(counter: $counter, features: $features, statusLoadData: $statusLoadData, statusRefreshData: $statusRefreshData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.counter, counter) || other.counter == counter) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.statusLoadData, statusLoadData) ||
                other.statusLoadData == statusLoadData) &&
            (identical(other.statusRefreshData, statusRefreshData) ||
                other.statusRefreshData == statusRefreshData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      counter,
      const DeepCollectionEquality().hash(_features),
      statusLoadData,
      statusRefreshData);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final int counter,
      final List<String> features,
      final Status statusLoadData,
      final Status statusRefreshData}) = _$HomeStateImpl;

  @override
  int get counter;
  @override
  List<String> get features;
  @override
  Status get statusLoadData;
  @override
  Status get statusRefreshData;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
