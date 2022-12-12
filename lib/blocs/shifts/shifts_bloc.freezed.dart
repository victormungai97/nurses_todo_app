// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shifts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShiftsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() retrieved,
    required TResult Function() activeRetrieved,
    required TResult Function() completedRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrieved,
    TResult? Function()? activeRetrieved,
    TResult? Function()? completedRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrieved,
    TResult Function()? activeRetrieved,
    TResult Function()? completedRetrieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShiftsStarted value) initial,
    required TResult Function(_ShiftsRetrieved value) retrieved,
    required TResult Function(_ActiveShiftsRetrieved value) activeRetrieved,
    required TResult Function(_CompletedShiftsRetrieved value)
        completedRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShiftsStarted value)? initial,
    TResult? Function(_ShiftsRetrieved value)? retrieved,
    TResult? Function(_ActiveShiftsRetrieved value)? activeRetrieved,
    TResult? Function(_CompletedShiftsRetrieved value)? completedRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShiftsStarted value)? initial,
    TResult Function(_ShiftsRetrieved value)? retrieved,
    TResult Function(_ActiveShiftsRetrieved value)? activeRetrieved,
    TResult Function(_CompletedShiftsRetrieved value)? completedRetrieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftsEventCopyWith<$Res> {
  factory $ShiftsEventCopyWith(
          ShiftsEvent value, $Res Function(ShiftsEvent) then) =
      _$ShiftsEventCopyWithImpl<$Res, ShiftsEvent>;
}

/// @nodoc
class _$ShiftsEventCopyWithImpl<$Res, $Val extends ShiftsEvent>
    implements $ShiftsEventCopyWith<$Res> {
  _$ShiftsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ShiftsStartedCopyWith<$Res> {
  factory _$$_ShiftsStartedCopyWith(
          _$_ShiftsStarted value, $Res Function(_$_ShiftsStarted) then) =
      __$$_ShiftsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShiftsStartedCopyWithImpl<$Res>
    extends _$ShiftsEventCopyWithImpl<$Res, _$_ShiftsStarted>
    implements _$$_ShiftsStartedCopyWith<$Res> {
  __$$_ShiftsStartedCopyWithImpl(
      _$_ShiftsStarted _value, $Res Function(_$_ShiftsStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShiftsStarted implements _ShiftsStarted {
  const _$_ShiftsStarted();

  @override
  String toString() {
    return 'ShiftsEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShiftsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() retrieved,
    required TResult Function() activeRetrieved,
    required TResult Function() completedRetrieved,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrieved,
    TResult? Function()? activeRetrieved,
    TResult? Function()? completedRetrieved,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrieved,
    TResult Function()? activeRetrieved,
    TResult Function()? completedRetrieved,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShiftsStarted value) initial,
    required TResult Function(_ShiftsRetrieved value) retrieved,
    required TResult Function(_ActiveShiftsRetrieved value) activeRetrieved,
    required TResult Function(_CompletedShiftsRetrieved value)
        completedRetrieved,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShiftsStarted value)? initial,
    TResult? Function(_ShiftsRetrieved value)? retrieved,
    TResult? Function(_ActiveShiftsRetrieved value)? activeRetrieved,
    TResult? Function(_CompletedShiftsRetrieved value)? completedRetrieved,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShiftsStarted value)? initial,
    TResult Function(_ShiftsRetrieved value)? retrieved,
    TResult Function(_ActiveShiftsRetrieved value)? activeRetrieved,
    TResult Function(_CompletedShiftsRetrieved value)? completedRetrieved,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ShiftsStarted implements ShiftsEvent {
  const factory _ShiftsStarted() = _$_ShiftsStarted;
}

/// @nodoc
abstract class _$$_ShiftsRetrievedCopyWith<$Res> {
  factory _$$_ShiftsRetrievedCopyWith(
          _$_ShiftsRetrieved value, $Res Function(_$_ShiftsRetrieved) then) =
      __$$_ShiftsRetrievedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShiftsRetrievedCopyWithImpl<$Res>
    extends _$ShiftsEventCopyWithImpl<$Res, _$_ShiftsRetrieved>
    implements _$$_ShiftsRetrievedCopyWith<$Res> {
  __$$_ShiftsRetrievedCopyWithImpl(
      _$_ShiftsRetrieved _value, $Res Function(_$_ShiftsRetrieved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShiftsRetrieved implements _ShiftsRetrieved {
  const _$_ShiftsRetrieved();

  @override
  String toString() {
    return 'ShiftsEvent.retrieved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShiftsRetrieved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() retrieved,
    required TResult Function() activeRetrieved,
    required TResult Function() completedRetrieved,
  }) {
    return retrieved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrieved,
    TResult? Function()? activeRetrieved,
    TResult? Function()? completedRetrieved,
  }) {
    return retrieved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrieved,
    TResult Function()? activeRetrieved,
    TResult Function()? completedRetrieved,
    required TResult orElse(),
  }) {
    if (retrieved != null) {
      return retrieved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShiftsStarted value) initial,
    required TResult Function(_ShiftsRetrieved value) retrieved,
    required TResult Function(_ActiveShiftsRetrieved value) activeRetrieved,
    required TResult Function(_CompletedShiftsRetrieved value)
        completedRetrieved,
  }) {
    return retrieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShiftsStarted value)? initial,
    TResult? Function(_ShiftsRetrieved value)? retrieved,
    TResult? Function(_ActiveShiftsRetrieved value)? activeRetrieved,
    TResult? Function(_CompletedShiftsRetrieved value)? completedRetrieved,
  }) {
    return retrieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShiftsStarted value)? initial,
    TResult Function(_ShiftsRetrieved value)? retrieved,
    TResult Function(_ActiveShiftsRetrieved value)? activeRetrieved,
    TResult Function(_CompletedShiftsRetrieved value)? completedRetrieved,
    required TResult orElse(),
  }) {
    if (retrieved != null) {
      return retrieved(this);
    }
    return orElse();
  }
}

abstract class _ShiftsRetrieved implements ShiftsEvent {
  const factory _ShiftsRetrieved() = _$_ShiftsRetrieved;
}

/// @nodoc
abstract class _$$_ActiveShiftsRetrievedCopyWith<$Res> {
  factory _$$_ActiveShiftsRetrievedCopyWith(_$_ActiveShiftsRetrieved value,
          $Res Function(_$_ActiveShiftsRetrieved) then) =
      __$$_ActiveShiftsRetrievedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActiveShiftsRetrievedCopyWithImpl<$Res>
    extends _$ShiftsEventCopyWithImpl<$Res, _$_ActiveShiftsRetrieved>
    implements _$$_ActiveShiftsRetrievedCopyWith<$Res> {
  __$$_ActiveShiftsRetrievedCopyWithImpl(_$_ActiveShiftsRetrieved _value,
      $Res Function(_$_ActiveShiftsRetrieved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActiveShiftsRetrieved implements _ActiveShiftsRetrieved {
  const _$_ActiveShiftsRetrieved();

  @override
  String toString() {
    return 'ShiftsEvent.activeRetrieved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActiveShiftsRetrieved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() retrieved,
    required TResult Function() activeRetrieved,
    required TResult Function() completedRetrieved,
  }) {
    return activeRetrieved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrieved,
    TResult? Function()? activeRetrieved,
    TResult? Function()? completedRetrieved,
  }) {
    return activeRetrieved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrieved,
    TResult Function()? activeRetrieved,
    TResult Function()? completedRetrieved,
    required TResult orElse(),
  }) {
    if (activeRetrieved != null) {
      return activeRetrieved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShiftsStarted value) initial,
    required TResult Function(_ShiftsRetrieved value) retrieved,
    required TResult Function(_ActiveShiftsRetrieved value) activeRetrieved,
    required TResult Function(_CompletedShiftsRetrieved value)
        completedRetrieved,
  }) {
    return activeRetrieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShiftsStarted value)? initial,
    TResult? Function(_ShiftsRetrieved value)? retrieved,
    TResult? Function(_ActiveShiftsRetrieved value)? activeRetrieved,
    TResult? Function(_CompletedShiftsRetrieved value)? completedRetrieved,
  }) {
    return activeRetrieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShiftsStarted value)? initial,
    TResult Function(_ShiftsRetrieved value)? retrieved,
    TResult Function(_ActiveShiftsRetrieved value)? activeRetrieved,
    TResult Function(_CompletedShiftsRetrieved value)? completedRetrieved,
    required TResult orElse(),
  }) {
    if (activeRetrieved != null) {
      return activeRetrieved(this);
    }
    return orElse();
  }
}

abstract class _ActiveShiftsRetrieved implements ShiftsEvent {
  const factory _ActiveShiftsRetrieved() = _$_ActiveShiftsRetrieved;
}

/// @nodoc
abstract class _$$_CompletedShiftsRetrievedCopyWith<$Res> {
  factory _$$_CompletedShiftsRetrievedCopyWith(
          _$_CompletedShiftsRetrieved value,
          $Res Function(_$_CompletedShiftsRetrieved) then) =
      __$$_CompletedShiftsRetrievedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CompletedShiftsRetrievedCopyWithImpl<$Res>
    extends _$ShiftsEventCopyWithImpl<$Res, _$_CompletedShiftsRetrieved>
    implements _$$_CompletedShiftsRetrievedCopyWith<$Res> {
  __$$_CompletedShiftsRetrievedCopyWithImpl(_$_CompletedShiftsRetrieved _value,
      $Res Function(_$_CompletedShiftsRetrieved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CompletedShiftsRetrieved implements _CompletedShiftsRetrieved {
  const _$_CompletedShiftsRetrieved();

  @override
  String toString() {
    return 'ShiftsEvent.completedRetrieved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompletedShiftsRetrieved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() retrieved,
    required TResult Function() activeRetrieved,
    required TResult Function() completedRetrieved,
  }) {
    return completedRetrieved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrieved,
    TResult? Function()? activeRetrieved,
    TResult? Function()? completedRetrieved,
  }) {
    return completedRetrieved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrieved,
    TResult Function()? activeRetrieved,
    TResult Function()? completedRetrieved,
    required TResult orElse(),
  }) {
    if (completedRetrieved != null) {
      return completedRetrieved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShiftsStarted value) initial,
    required TResult Function(_ShiftsRetrieved value) retrieved,
    required TResult Function(_ActiveShiftsRetrieved value) activeRetrieved,
    required TResult Function(_CompletedShiftsRetrieved value)
        completedRetrieved,
  }) {
    return completedRetrieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShiftsStarted value)? initial,
    TResult? Function(_ShiftsRetrieved value)? retrieved,
    TResult? Function(_ActiveShiftsRetrieved value)? activeRetrieved,
    TResult? Function(_CompletedShiftsRetrieved value)? completedRetrieved,
  }) {
    return completedRetrieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShiftsStarted value)? initial,
    TResult Function(_ShiftsRetrieved value)? retrieved,
    TResult Function(_ActiveShiftsRetrieved value)? activeRetrieved,
    TResult Function(_CompletedShiftsRetrieved value)? completedRetrieved,
    required TResult orElse(),
  }) {
    if (completedRetrieved != null) {
      return completedRetrieved(this);
    }
    return orElse();
  }
}

abstract class _CompletedShiftsRetrieved implements ShiftsEvent {
  const factory _CompletedShiftsRetrieved() = _$_CompletedShiftsRetrieved;
}

/// @nodoc
mixin _$ShiftsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<ShiftsModel>? shifts) obtainSuccess,
    required TResult Function(String exception) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<ShiftsModel>? shifts)? obtainSuccess,
    TResult? Function(String exception)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<ShiftsModel>? shifts)? obtainSuccess,
    TResult Function(String exception)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShiftsInitial value) initial,
    required TResult Function(ShiftsLoading value) load,
    required TResult Function(ShiftsObtainSuccess value) obtainSuccess,
    required TResult Function(ShitfsFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShiftsInitial value)? initial,
    TResult? Function(ShiftsLoading value)? load,
    TResult? Function(ShiftsObtainSuccess value)? obtainSuccess,
    TResult? Function(ShitfsFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShiftsInitial value)? initial,
    TResult Function(ShiftsLoading value)? load,
    TResult Function(ShiftsObtainSuccess value)? obtainSuccess,
    TResult Function(ShitfsFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftsStateCopyWith<$Res> {
  factory $ShiftsStateCopyWith(
          ShiftsState value, $Res Function(ShiftsState) then) =
      _$ShiftsStateCopyWithImpl<$Res, ShiftsState>;
}

/// @nodoc
class _$ShiftsStateCopyWithImpl<$Res, $Val extends ShiftsState>
    implements $ShiftsStateCopyWith<$Res> {
  _$ShiftsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShiftsInitialCopyWith<$Res> {
  factory _$$ShiftsInitialCopyWith(
          _$ShiftsInitial value, $Res Function(_$ShiftsInitial) then) =
      __$$ShiftsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShiftsInitialCopyWithImpl<$Res>
    extends _$ShiftsStateCopyWithImpl<$Res, _$ShiftsInitial>
    implements _$$ShiftsInitialCopyWith<$Res> {
  __$$ShiftsInitialCopyWithImpl(
      _$ShiftsInitial _value, $Res Function(_$ShiftsInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShiftsInitial implements ShiftsInitial {
  const _$ShiftsInitial();

  @override
  String toString() {
    return 'ShiftsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShiftsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<ShiftsModel>? shifts) obtainSuccess,
    required TResult Function(String exception) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<ShiftsModel>? shifts)? obtainSuccess,
    TResult? Function(String exception)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<ShiftsModel>? shifts)? obtainSuccess,
    TResult Function(String exception)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShiftsInitial value) initial,
    required TResult Function(ShiftsLoading value) load,
    required TResult Function(ShiftsObtainSuccess value) obtainSuccess,
    required TResult Function(ShitfsFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShiftsInitial value)? initial,
    TResult? Function(ShiftsLoading value)? load,
    TResult? Function(ShiftsObtainSuccess value)? obtainSuccess,
    TResult? Function(ShitfsFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShiftsInitial value)? initial,
    TResult Function(ShiftsLoading value)? load,
    TResult Function(ShiftsObtainSuccess value)? obtainSuccess,
    TResult Function(ShitfsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ShiftsInitial implements ShiftsState {
  const factory ShiftsInitial() = _$ShiftsInitial;
}

/// @nodoc
abstract class _$$ShiftsLoadingCopyWith<$Res> {
  factory _$$ShiftsLoadingCopyWith(
          _$ShiftsLoading value, $Res Function(_$ShiftsLoading) then) =
      __$$ShiftsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShiftsLoadingCopyWithImpl<$Res>
    extends _$ShiftsStateCopyWithImpl<$Res, _$ShiftsLoading>
    implements _$$ShiftsLoadingCopyWith<$Res> {
  __$$ShiftsLoadingCopyWithImpl(
      _$ShiftsLoading _value, $Res Function(_$ShiftsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShiftsLoading implements ShiftsLoading {
  const _$ShiftsLoading();

  @override
  String toString() {
    return 'ShiftsState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShiftsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<ShiftsModel>? shifts) obtainSuccess,
    required TResult Function(String exception) failure,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<ShiftsModel>? shifts)? obtainSuccess,
    TResult? Function(String exception)? failure,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<ShiftsModel>? shifts)? obtainSuccess,
    TResult Function(String exception)? failure,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShiftsInitial value) initial,
    required TResult Function(ShiftsLoading value) load,
    required TResult Function(ShiftsObtainSuccess value) obtainSuccess,
    required TResult Function(ShitfsFailure value) failure,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShiftsInitial value)? initial,
    TResult? Function(ShiftsLoading value)? load,
    TResult? Function(ShiftsObtainSuccess value)? obtainSuccess,
    TResult? Function(ShitfsFailure value)? failure,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShiftsInitial value)? initial,
    TResult Function(ShiftsLoading value)? load,
    TResult Function(ShiftsObtainSuccess value)? obtainSuccess,
    TResult Function(ShitfsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class ShiftsLoading implements ShiftsState {
  const factory ShiftsLoading() = _$ShiftsLoading;
}

/// @nodoc
abstract class _$$ShiftsObtainSuccessCopyWith<$Res> {
  factory _$$ShiftsObtainSuccessCopyWith(_$ShiftsObtainSuccess value,
          $Res Function(_$ShiftsObtainSuccess) then) =
      __$$ShiftsObtainSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ShiftsModel>? shifts});
}

/// @nodoc
class __$$ShiftsObtainSuccessCopyWithImpl<$Res>
    extends _$ShiftsStateCopyWithImpl<$Res, _$ShiftsObtainSuccess>
    implements _$$ShiftsObtainSuccessCopyWith<$Res> {
  __$$ShiftsObtainSuccessCopyWithImpl(
      _$ShiftsObtainSuccess _value, $Res Function(_$ShiftsObtainSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shifts = freezed,
  }) {
    return _then(_$ShiftsObtainSuccess(
      shifts: freezed == shifts
          ? _value._shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as List<ShiftsModel>?,
    ));
  }
}

/// @nodoc

class _$ShiftsObtainSuccess implements ShiftsObtainSuccess {
  const _$ShiftsObtainSuccess({final List<ShiftsModel>? shifts})
      : _shifts = shifts;

  final List<ShiftsModel>? _shifts;
  @override
  List<ShiftsModel>? get shifts {
    final value = _shifts;
    if (value == null) return null;
    if (_shifts is EqualUnmodifiableListView) return _shifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ShiftsState.obtainSuccess(shifts: $shifts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftsObtainSuccess &&
            const DeepCollectionEquality().equals(other._shifts, _shifts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_shifts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftsObtainSuccessCopyWith<_$ShiftsObtainSuccess> get copyWith =>
      __$$ShiftsObtainSuccessCopyWithImpl<_$ShiftsObtainSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<ShiftsModel>? shifts) obtainSuccess,
    required TResult Function(String exception) failure,
  }) {
    return obtainSuccess(shifts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<ShiftsModel>? shifts)? obtainSuccess,
    TResult? Function(String exception)? failure,
  }) {
    return obtainSuccess?.call(shifts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<ShiftsModel>? shifts)? obtainSuccess,
    TResult Function(String exception)? failure,
    required TResult orElse(),
  }) {
    if (obtainSuccess != null) {
      return obtainSuccess(shifts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShiftsInitial value) initial,
    required TResult Function(ShiftsLoading value) load,
    required TResult Function(ShiftsObtainSuccess value) obtainSuccess,
    required TResult Function(ShitfsFailure value) failure,
  }) {
    return obtainSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShiftsInitial value)? initial,
    TResult? Function(ShiftsLoading value)? load,
    TResult? Function(ShiftsObtainSuccess value)? obtainSuccess,
    TResult? Function(ShitfsFailure value)? failure,
  }) {
    return obtainSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShiftsInitial value)? initial,
    TResult Function(ShiftsLoading value)? load,
    TResult Function(ShiftsObtainSuccess value)? obtainSuccess,
    TResult Function(ShitfsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (obtainSuccess != null) {
      return obtainSuccess(this);
    }
    return orElse();
  }
}

abstract class ShiftsObtainSuccess implements ShiftsState {
  const factory ShiftsObtainSuccess({final List<ShiftsModel>? shifts}) =
      _$ShiftsObtainSuccess;

  List<ShiftsModel>? get shifts;
  @JsonKey(ignore: true)
  _$$ShiftsObtainSuccessCopyWith<_$ShiftsObtainSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShitfsFailureCopyWith<$Res> {
  factory _$$ShitfsFailureCopyWith(
          _$ShitfsFailure value, $Res Function(_$ShitfsFailure) then) =
      __$$ShitfsFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String exception});
}

/// @nodoc
class __$$ShitfsFailureCopyWithImpl<$Res>
    extends _$ShiftsStateCopyWithImpl<$Res, _$ShitfsFailure>
    implements _$$ShitfsFailureCopyWith<$Res> {
  __$$ShitfsFailureCopyWithImpl(
      _$ShitfsFailure _value, $Res Function(_$ShitfsFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$ShitfsFailure(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShitfsFailure implements ShitfsFailure {
  const _$ShitfsFailure({required this.exception});

  @override
  final String exception;

  @override
  String toString() {
    return 'ShiftsState.failure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShitfsFailure &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShitfsFailureCopyWith<_$ShitfsFailure> get copyWith =>
      __$$ShitfsFailureCopyWithImpl<_$ShitfsFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<ShiftsModel>? shifts) obtainSuccess,
    required TResult Function(String exception) failure,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<ShiftsModel>? shifts)? obtainSuccess,
    TResult? Function(String exception)? failure,
  }) {
    return failure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<ShiftsModel>? shifts)? obtainSuccess,
    TResult Function(String exception)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShiftsInitial value) initial,
    required TResult Function(ShiftsLoading value) load,
    required TResult Function(ShiftsObtainSuccess value) obtainSuccess,
    required TResult Function(ShitfsFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShiftsInitial value)? initial,
    TResult? Function(ShiftsLoading value)? load,
    TResult? Function(ShiftsObtainSuccess value)? obtainSuccess,
    TResult? Function(ShitfsFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShiftsInitial value)? initial,
    TResult Function(ShiftsLoading value)? load,
    TResult Function(ShiftsObtainSuccess value)? obtainSuccess,
    TResult Function(ShitfsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ShitfsFailure implements ShiftsState {
  const factory ShitfsFailure({required final String exception}) =
      _$ShitfsFailure;

  String get exception;
  @JsonKey(ignore: true)
  _$$ShitfsFailureCopyWith<_$ShitfsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
