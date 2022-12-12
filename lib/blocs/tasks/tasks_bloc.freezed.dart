// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() allTasksRetrieved,
    required TResult Function(DateTime? shift) shiftTasksRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? allTasksRetrieved,
    TResult? Function(DateTime? shift)? shiftTasksRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? allTasksRetrieved,
    TResult Function(DateTime? shift)? shiftTasksRetrieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksStarted value) initial,
    required TResult Function(_AllTasksRetrieved value) allTasksRetrieved,
    required TResult Function(_ShiftTasksRetrieved value) shiftTasksRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksStarted value)? initial,
    TResult? Function(_AllTasksRetrieved value)? allTasksRetrieved,
    TResult? Function(_ShiftTasksRetrieved value)? shiftTasksRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksStarted value)? initial,
    TResult Function(_AllTasksRetrieved value)? allTasksRetrieved,
    TResult Function(_ShiftTasksRetrieved value)? shiftTasksRetrieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res, TasksEvent>;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res, $Val extends TasksEvent>
    implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TasksStartedCopyWith<$Res> {
  factory _$$_TasksStartedCopyWith(
          _$_TasksStarted value, $Res Function(_$_TasksStarted) then) =
      __$$_TasksStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TasksStartedCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$_TasksStarted>
    implements _$$_TasksStartedCopyWith<$Res> {
  __$$_TasksStartedCopyWithImpl(
      _$_TasksStarted _value, $Res Function(_$_TasksStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TasksStarted implements _TasksStarted {
  const _$_TasksStarted();

  @override
  String toString() {
    return 'TasksEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TasksStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() allTasksRetrieved,
    required TResult Function(DateTime? shift) shiftTasksRetrieved,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? allTasksRetrieved,
    TResult? Function(DateTime? shift)? shiftTasksRetrieved,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? allTasksRetrieved,
    TResult Function(DateTime? shift)? shiftTasksRetrieved,
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
    required TResult Function(_TasksStarted value) initial,
    required TResult Function(_AllTasksRetrieved value) allTasksRetrieved,
    required TResult Function(_ShiftTasksRetrieved value) shiftTasksRetrieved,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksStarted value)? initial,
    TResult? Function(_AllTasksRetrieved value)? allTasksRetrieved,
    TResult? Function(_ShiftTasksRetrieved value)? shiftTasksRetrieved,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksStarted value)? initial,
    TResult Function(_AllTasksRetrieved value)? allTasksRetrieved,
    TResult Function(_ShiftTasksRetrieved value)? shiftTasksRetrieved,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TasksStarted implements TasksEvent {
  const factory _TasksStarted() = _$_TasksStarted;
}

/// @nodoc
abstract class _$$_AllTasksRetrievedCopyWith<$Res> {
  factory _$$_AllTasksRetrievedCopyWith(_$_AllTasksRetrieved value,
          $Res Function(_$_AllTasksRetrieved) then) =
      __$$_AllTasksRetrievedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AllTasksRetrievedCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$_AllTasksRetrieved>
    implements _$$_AllTasksRetrievedCopyWith<$Res> {
  __$$_AllTasksRetrievedCopyWithImpl(
      _$_AllTasksRetrieved _value, $Res Function(_$_AllTasksRetrieved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AllTasksRetrieved implements _AllTasksRetrieved {
  const _$_AllTasksRetrieved();

  @override
  String toString() {
    return 'TasksEvent.allTasksRetrieved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AllTasksRetrieved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() allTasksRetrieved,
    required TResult Function(DateTime? shift) shiftTasksRetrieved,
  }) {
    return allTasksRetrieved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? allTasksRetrieved,
    TResult? Function(DateTime? shift)? shiftTasksRetrieved,
  }) {
    return allTasksRetrieved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? allTasksRetrieved,
    TResult Function(DateTime? shift)? shiftTasksRetrieved,
    required TResult orElse(),
  }) {
    if (allTasksRetrieved != null) {
      return allTasksRetrieved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksStarted value) initial,
    required TResult Function(_AllTasksRetrieved value) allTasksRetrieved,
    required TResult Function(_ShiftTasksRetrieved value) shiftTasksRetrieved,
  }) {
    return allTasksRetrieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksStarted value)? initial,
    TResult? Function(_AllTasksRetrieved value)? allTasksRetrieved,
    TResult? Function(_ShiftTasksRetrieved value)? shiftTasksRetrieved,
  }) {
    return allTasksRetrieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksStarted value)? initial,
    TResult Function(_AllTasksRetrieved value)? allTasksRetrieved,
    TResult Function(_ShiftTasksRetrieved value)? shiftTasksRetrieved,
    required TResult orElse(),
  }) {
    if (allTasksRetrieved != null) {
      return allTasksRetrieved(this);
    }
    return orElse();
  }
}

abstract class _AllTasksRetrieved implements TasksEvent {
  const factory _AllTasksRetrieved() = _$_AllTasksRetrieved;
}

/// @nodoc
abstract class _$$_ShiftTasksRetrievedCopyWith<$Res> {
  factory _$$_ShiftTasksRetrievedCopyWith(_$_ShiftTasksRetrieved value,
          $Res Function(_$_ShiftTasksRetrieved) then) =
      __$$_ShiftTasksRetrievedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? shift});
}

/// @nodoc
class __$$_ShiftTasksRetrievedCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$_ShiftTasksRetrieved>
    implements _$$_ShiftTasksRetrievedCopyWith<$Res> {
  __$$_ShiftTasksRetrievedCopyWithImpl(_$_ShiftTasksRetrieved _value,
      $Res Function(_$_ShiftTasksRetrieved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shift = freezed,
  }) {
    return _then(_$_ShiftTasksRetrieved(
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_ShiftTasksRetrieved implements _ShiftTasksRetrieved {
  const _$_ShiftTasksRetrieved({required this.shift});

  @override
  final DateTime? shift;

  @override
  String toString() {
    return 'TasksEvent.shiftTasksRetrieved(shift: $shift)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShiftTasksRetrieved &&
            (identical(other.shift, shift) || other.shift == shift));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shift);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShiftTasksRetrievedCopyWith<_$_ShiftTasksRetrieved> get copyWith =>
      __$$_ShiftTasksRetrievedCopyWithImpl<_$_ShiftTasksRetrieved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() allTasksRetrieved,
    required TResult Function(DateTime? shift) shiftTasksRetrieved,
  }) {
    return shiftTasksRetrieved(shift);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? allTasksRetrieved,
    TResult? Function(DateTime? shift)? shiftTasksRetrieved,
  }) {
    return shiftTasksRetrieved?.call(shift);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? allTasksRetrieved,
    TResult Function(DateTime? shift)? shiftTasksRetrieved,
    required TResult orElse(),
  }) {
    if (shiftTasksRetrieved != null) {
      return shiftTasksRetrieved(shift);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksStarted value) initial,
    required TResult Function(_AllTasksRetrieved value) allTasksRetrieved,
    required TResult Function(_ShiftTasksRetrieved value) shiftTasksRetrieved,
  }) {
    return shiftTasksRetrieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksStarted value)? initial,
    TResult? Function(_AllTasksRetrieved value)? allTasksRetrieved,
    TResult? Function(_ShiftTasksRetrieved value)? shiftTasksRetrieved,
  }) {
    return shiftTasksRetrieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksStarted value)? initial,
    TResult Function(_AllTasksRetrieved value)? allTasksRetrieved,
    TResult Function(_ShiftTasksRetrieved value)? shiftTasksRetrieved,
    required TResult orElse(),
  }) {
    if (shiftTasksRetrieved != null) {
      return shiftTasksRetrieved(this);
    }
    return orElse();
  }
}

abstract class _ShiftTasksRetrieved implements TasksEvent {
  const factory _ShiftTasksRetrieved({required final DateTime? shift}) =
      _$_ShiftTasksRetrieved;

  DateTime? get shift;
  @JsonKey(ignore: true)
  _$$_ShiftTasksRetrievedCopyWith<_$_ShiftTasksRetrieved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<TaskModel>? tasks) tasksSuccess,
    required TResult Function(List<TaskModel>? tasks) shiftTaskSuccess,
    required TResult Function(String exception) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<TaskModel>? tasks)? tasksSuccess,
    TResult? Function(List<TaskModel>? tasks)? shiftTaskSuccess,
    TResult? Function(String exception)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<TaskModel>? tasks)? tasksSuccess,
    TResult Function(List<TaskModel>? tasks)? shiftTaskSuccess,
    TResult Function(String exception)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInitial value) initial,
    required TResult Function(TasksLoading value) load,
    required TResult Function(TasksSuccess value) tasksSuccess,
    required TResult Function(ShiftTasksSuccess value) shiftTaskSuccess,
    required TResult Function(TasksFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInitial value)? initial,
    TResult? Function(TasksLoading value)? load,
    TResult? Function(TasksSuccess value)? tasksSuccess,
    TResult? Function(ShiftTasksSuccess value)? shiftTaskSuccess,
    TResult? Function(TasksFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInitial value)? initial,
    TResult Function(TasksLoading value)? load,
    TResult Function(TasksSuccess value)? tasksSuccess,
    TResult Function(ShiftTasksSuccess value)? shiftTaskSuccess,
    TResult Function(TasksFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TasksInitialCopyWith<$Res> {
  factory _$$TasksInitialCopyWith(
          _$TasksInitial value, $Res Function(_$TasksInitial) then) =
      __$$TasksInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksInitialCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksInitial>
    implements _$$TasksInitialCopyWith<$Res> {
  __$$TasksInitialCopyWithImpl(
      _$TasksInitial _value, $Res Function(_$TasksInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TasksInitial implements TasksInitial {
  const _$TasksInitial();

  @override
  String toString() {
    return 'TasksState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TasksInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<TaskModel>? tasks) tasksSuccess,
    required TResult Function(List<TaskModel>? tasks) shiftTaskSuccess,
    required TResult Function(String exception) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<TaskModel>? tasks)? tasksSuccess,
    TResult? Function(List<TaskModel>? tasks)? shiftTaskSuccess,
    TResult? Function(String exception)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<TaskModel>? tasks)? tasksSuccess,
    TResult Function(List<TaskModel>? tasks)? shiftTaskSuccess,
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
    required TResult Function(TasksInitial value) initial,
    required TResult Function(TasksLoading value) load,
    required TResult Function(TasksSuccess value) tasksSuccess,
    required TResult Function(ShiftTasksSuccess value) shiftTaskSuccess,
    required TResult Function(TasksFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInitial value)? initial,
    TResult? Function(TasksLoading value)? load,
    TResult? Function(TasksSuccess value)? tasksSuccess,
    TResult? Function(ShiftTasksSuccess value)? shiftTaskSuccess,
    TResult? Function(TasksFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInitial value)? initial,
    TResult Function(TasksLoading value)? load,
    TResult Function(TasksSuccess value)? tasksSuccess,
    TResult Function(ShiftTasksSuccess value)? shiftTaskSuccess,
    TResult Function(TasksFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TasksInitial implements TasksState {
  const factory TasksInitial() = _$TasksInitial;
}

/// @nodoc
abstract class _$$TasksLoadingCopyWith<$Res> {
  factory _$$TasksLoadingCopyWith(
          _$TasksLoading value, $Res Function(_$TasksLoading) then) =
      __$$TasksLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksLoadingCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksLoading>
    implements _$$TasksLoadingCopyWith<$Res> {
  __$$TasksLoadingCopyWithImpl(
      _$TasksLoading _value, $Res Function(_$TasksLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TasksLoading implements TasksLoading {
  const _$TasksLoading();

  @override
  String toString() {
    return 'TasksState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TasksLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<TaskModel>? tasks) tasksSuccess,
    required TResult Function(List<TaskModel>? tasks) shiftTaskSuccess,
    required TResult Function(String exception) failure,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<TaskModel>? tasks)? tasksSuccess,
    TResult? Function(List<TaskModel>? tasks)? shiftTaskSuccess,
    TResult? Function(String exception)? failure,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<TaskModel>? tasks)? tasksSuccess,
    TResult Function(List<TaskModel>? tasks)? shiftTaskSuccess,
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
    required TResult Function(TasksInitial value) initial,
    required TResult Function(TasksLoading value) load,
    required TResult Function(TasksSuccess value) tasksSuccess,
    required TResult Function(ShiftTasksSuccess value) shiftTaskSuccess,
    required TResult Function(TasksFailure value) failure,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInitial value)? initial,
    TResult? Function(TasksLoading value)? load,
    TResult? Function(TasksSuccess value)? tasksSuccess,
    TResult? Function(ShiftTasksSuccess value)? shiftTaskSuccess,
    TResult? Function(TasksFailure value)? failure,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInitial value)? initial,
    TResult Function(TasksLoading value)? load,
    TResult Function(TasksSuccess value)? tasksSuccess,
    TResult Function(ShiftTasksSuccess value)? shiftTaskSuccess,
    TResult Function(TasksFailure value)? failure,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class TasksLoading implements TasksState {
  const factory TasksLoading() = _$TasksLoading;
}

/// @nodoc
abstract class _$$TasksSuccessCopyWith<$Res> {
  factory _$$TasksSuccessCopyWith(
          _$TasksSuccess value, $Res Function(_$TasksSuccess) then) =
      __$$TasksSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskModel>? tasks});
}

/// @nodoc
class __$$TasksSuccessCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksSuccess>
    implements _$$TasksSuccessCopyWith<$Res> {
  __$$TasksSuccessCopyWithImpl(
      _$TasksSuccess _value, $Res Function(_$TasksSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_$TasksSuccess(
      tasks: freezed == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>?,
    ));
  }
}

/// @nodoc

class _$TasksSuccess implements TasksSuccess {
  const _$TasksSuccess({final List<TaskModel>? tasks}) : _tasks = tasks;

  final List<TaskModel>? _tasks;
  @override
  List<TaskModel>? get tasks {
    final value = _tasks;
    if (value == null) return null;
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TasksState.tasksSuccess(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksSuccess &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksSuccessCopyWith<_$TasksSuccess> get copyWith =>
      __$$TasksSuccessCopyWithImpl<_$TasksSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<TaskModel>? tasks) tasksSuccess,
    required TResult Function(List<TaskModel>? tasks) shiftTaskSuccess,
    required TResult Function(String exception) failure,
  }) {
    return tasksSuccess(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<TaskModel>? tasks)? tasksSuccess,
    TResult? Function(List<TaskModel>? tasks)? shiftTaskSuccess,
    TResult? Function(String exception)? failure,
  }) {
    return tasksSuccess?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<TaskModel>? tasks)? tasksSuccess,
    TResult Function(List<TaskModel>? tasks)? shiftTaskSuccess,
    TResult Function(String exception)? failure,
    required TResult orElse(),
  }) {
    if (tasksSuccess != null) {
      return tasksSuccess(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInitial value) initial,
    required TResult Function(TasksLoading value) load,
    required TResult Function(TasksSuccess value) tasksSuccess,
    required TResult Function(ShiftTasksSuccess value) shiftTaskSuccess,
    required TResult Function(TasksFailure value) failure,
  }) {
    return tasksSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInitial value)? initial,
    TResult? Function(TasksLoading value)? load,
    TResult? Function(TasksSuccess value)? tasksSuccess,
    TResult? Function(ShiftTasksSuccess value)? shiftTaskSuccess,
    TResult? Function(TasksFailure value)? failure,
  }) {
    return tasksSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInitial value)? initial,
    TResult Function(TasksLoading value)? load,
    TResult Function(TasksSuccess value)? tasksSuccess,
    TResult Function(ShiftTasksSuccess value)? shiftTaskSuccess,
    TResult Function(TasksFailure value)? failure,
    required TResult orElse(),
  }) {
    if (tasksSuccess != null) {
      return tasksSuccess(this);
    }
    return orElse();
  }
}

abstract class TasksSuccess implements TasksState {
  const factory TasksSuccess({final List<TaskModel>? tasks}) = _$TasksSuccess;

  List<TaskModel>? get tasks;
  @JsonKey(ignore: true)
  _$$TasksSuccessCopyWith<_$TasksSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShiftTasksSuccessCopyWith<$Res> {
  factory _$$ShiftTasksSuccessCopyWith(
          _$ShiftTasksSuccess value, $Res Function(_$ShiftTasksSuccess) then) =
      __$$ShiftTasksSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskModel>? tasks});
}

/// @nodoc
class __$$ShiftTasksSuccessCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$ShiftTasksSuccess>
    implements _$$ShiftTasksSuccessCopyWith<$Res> {
  __$$ShiftTasksSuccessCopyWithImpl(
      _$ShiftTasksSuccess _value, $Res Function(_$ShiftTasksSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_$ShiftTasksSuccess(
      tasks: freezed == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>?,
    ));
  }
}

/// @nodoc

class _$ShiftTasksSuccess implements ShiftTasksSuccess {
  const _$ShiftTasksSuccess({final List<TaskModel>? tasks}) : _tasks = tasks;

  final List<TaskModel>? _tasks;
  @override
  List<TaskModel>? get tasks {
    final value = _tasks;
    if (value == null) return null;
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TasksState.shiftTaskSuccess(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftTasksSuccess &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftTasksSuccessCopyWith<_$ShiftTasksSuccess> get copyWith =>
      __$$ShiftTasksSuccessCopyWithImpl<_$ShiftTasksSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<TaskModel>? tasks) tasksSuccess,
    required TResult Function(List<TaskModel>? tasks) shiftTaskSuccess,
    required TResult Function(String exception) failure,
  }) {
    return shiftTaskSuccess(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<TaskModel>? tasks)? tasksSuccess,
    TResult? Function(List<TaskModel>? tasks)? shiftTaskSuccess,
    TResult? Function(String exception)? failure,
  }) {
    return shiftTaskSuccess?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<TaskModel>? tasks)? tasksSuccess,
    TResult Function(List<TaskModel>? tasks)? shiftTaskSuccess,
    TResult Function(String exception)? failure,
    required TResult orElse(),
  }) {
    if (shiftTaskSuccess != null) {
      return shiftTaskSuccess(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInitial value) initial,
    required TResult Function(TasksLoading value) load,
    required TResult Function(TasksSuccess value) tasksSuccess,
    required TResult Function(ShiftTasksSuccess value) shiftTaskSuccess,
    required TResult Function(TasksFailure value) failure,
  }) {
    return shiftTaskSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInitial value)? initial,
    TResult? Function(TasksLoading value)? load,
    TResult? Function(TasksSuccess value)? tasksSuccess,
    TResult? Function(ShiftTasksSuccess value)? shiftTaskSuccess,
    TResult? Function(TasksFailure value)? failure,
  }) {
    return shiftTaskSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInitial value)? initial,
    TResult Function(TasksLoading value)? load,
    TResult Function(TasksSuccess value)? tasksSuccess,
    TResult Function(ShiftTasksSuccess value)? shiftTaskSuccess,
    TResult Function(TasksFailure value)? failure,
    required TResult orElse(),
  }) {
    if (shiftTaskSuccess != null) {
      return shiftTaskSuccess(this);
    }
    return orElse();
  }
}

abstract class ShiftTasksSuccess implements TasksState {
  const factory ShiftTasksSuccess({final List<TaskModel>? tasks}) =
      _$ShiftTasksSuccess;

  List<TaskModel>? get tasks;
  @JsonKey(ignore: true)
  _$$ShiftTasksSuccessCopyWith<_$ShiftTasksSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksFailureCopyWith<$Res> {
  factory _$$TasksFailureCopyWith(
          _$TasksFailure value, $Res Function(_$TasksFailure) then) =
      __$$TasksFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String exception});
}

/// @nodoc
class __$$TasksFailureCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksFailure>
    implements _$$TasksFailureCopyWith<$Res> {
  __$$TasksFailureCopyWithImpl(
      _$TasksFailure _value, $Res Function(_$TasksFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$TasksFailure(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TasksFailure implements TasksFailure {
  const _$TasksFailure({required this.exception});

  @override
  final String exception;

  @override
  String toString() {
    return 'TasksState.failure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksFailure &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksFailureCopyWith<_$TasksFailure> get copyWith =>
      __$$TasksFailureCopyWithImpl<_$TasksFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function(List<TaskModel>? tasks) tasksSuccess,
    required TResult Function(List<TaskModel>? tasks) shiftTaskSuccess,
    required TResult Function(String exception) failure,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function(List<TaskModel>? tasks)? tasksSuccess,
    TResult? Function(List<TaskModel>? tasks)? shiftTaskSuccess,
    TResult? Function(String exception)? failure,
  }) {
    return failure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function(List<TaskModel>? tasks)? tasksSuccess,
    TResult Function(List<TaskModel>? tasks)? shiftTaskSuccess,
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
    required TResult Function(TasksInitial value) initial,
    required TResult Function(TasksLoading value) load,
    required TResult Function(TasksSuccess value) tasksSuccess,
    required TResult Function(ShiftTasksSuccess value) shiftTaskSuccess,
    required TResult Function(TasksFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInitial value)? initial,
    TResult? Function(TasksLoading value)? load,
    TResult? Function(TasksSuccess value)? tasksSuccess,
    TResult? Function(ShiftTasksSuccess value)? shiftTaskSuccess,
    TResult? Function(TasksFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInitial value)? initial,
    TResult Function(TasksLoading value)? load,
    TResult Function(TasksSuccess value)? tasksSuccess,
    TResult Function(ShiftTasksSuccess value)? shiftTaskSuccess,
    TResult Function(TasksFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class TasksFailure implements TasksState {
  const factory TasksFailure({required final String exception}) =
      _$TasksFailure;

  String get exception;
  @JsonKey(ignore: true)
  _$$TasksFailureCopyWith<_$TasksFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
