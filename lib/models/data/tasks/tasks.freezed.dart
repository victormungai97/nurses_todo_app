// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  bool get reschedulable => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeys.id, nullable: true)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeys.message)
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeys.completed, defaultValue: false)
  bool get completed => throw _privateConstructorUsedError;
  @JsonKey(
      name: JsonKeys.shift,
      fromJson: Utilities.dateTimeFromTimestamp,
      toJson: Utilities.dateTimeToTimestamp,
      nullable: true)
  DateTime? get shift => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call(
      {bool reschedulable,
      @JsonKey(name: JsonKeys.id, nullable: true)
          String? id,
      @JsonKey(name: JsonKeys.message)
          String label,
      @JsonKey(name: JsonKeys.completed, defaultValue: false)
          bool completed,
      @JsonKey(name: JsonKeys.shift, fromJson: Utilities.dateTimeFromTimestamp, toJson: Utilities.dateTimeToTimestamp, nullable: true)
          DateTime? shift});
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reschedulable = null,
    Object? id = freezed,
    Object? label = null,
    Object? completed = null,
    Object? shift = freezed,
  }) {
    return _then(_value.copyWith(
      reschedulable: null == reschedulable
          ? _value.reschedulable
          : reschedulable // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$$_TaskModelCopyWith(
          _$_TaskModel value, $Res Function(_$_TaskModel) then) =
      __$$_TaskModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool reschedulable,
      @JsonKey(name: JsonKeys.id, nullable: true)
          String? id,
      @JsonKey(name: JsonKeys.message)
          String label,
      @JsonKey(name: JsonKeys.completed, defaultValue: false)
          bool completed,
      @JsonKey(name: JsonKeys.shift, fromJson: Utilities.dateTimeFromTimestamp, toJson: Utilities.dateTimeToTimestamp, nullable: true)
          DateTime? shift});
}

/// @nodoc
class __$$_TaskModelCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$_TaskModel>
    implements _$$_TaskModelCopyWith<$Res> {
  __$$_TaskModelCopyWithImpl(
      _$_TaskModel _value, $Res Function(_$_TaskModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reschedulable = null,
    Object? id = freezed,
    Object? label = null,
    Object? completed = null,
    Object? shift = freezed,
  }) {
    return _then(_$_TaskModel(
      reschedulable: null == reschedulable
          ? _value.reschedulable
          : reschedulable // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskModel extends _TaskModel {
  const _$_TaskModel(
      {this.reschedulable = false,
      @JsonKey(name: JsonKeys.id, nullable: true)
          this.id,
      @JsonKey(name: JsonKeys.message)
          required this.label,
      @JsonKey(name: JsonKeys.completed, defaultValue: false)
          this.completed = false,
      @JsonKey(name: JsonKeys.shift, fromJson: Utilities.dateTimeFromTimestamp, toJson: Utilities.dateTimeToTimestamp, nullable: true)
          this.shift})
      : super._();

  factory _$_TaskModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskModelFromJson(json);

  @override
  @JsonKey()
  final bool reschedulable;
  @override
  @JsonKey(name: JsonKeys.id, nullable: true)
  final String? id;
  @override
  @JsonKey(name: JsonKeys.message)
  final String label;
  @override
  @JsonKey(name: JsonKeys.completed, defaultValue: false)
  final bool completed;
  @override
  @JsonKey(
      name: JsonKeys.shift,
      fromJson: Utilities.dateTimeFromTimestamp,
      toJson: Utilities.dateTimeToTimestamp,
      nullable: true)
  final DateTime? shift;

  @override
  String toString() {
    return 'TaskModel(reschedulable: $reschedulable, id: $id, label: $label, completed: $completed, shift: $shift)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskModel &&
            (identical(other.reschedulable, reschedulable) ||
                other.reschedulable == reschedulable) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.shift, shift) || other.shift == shift));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reschedulable, id, label, completed, shift);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      __$$_TaskModelCopyWithImpl<_$_TaskModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskModelToJson(
      this,
    );
  }
}

abstract class _TaskModel extends TaskModel {
  const factory _TaskModel(
      {final bool reschedulable,
      @JsonKey(name: JsonKeys.id, nullable: true)
          final String? id,
      @JsonKey(name: JsonKeys.message)
          required final String label,
      @JsonKey(name: JsonKeys.completed, defaultValue: false)
          final bool completed,
      @JsonKey(name: JsonKeys.shift, fromJson: Utilities.dateTimeFromTimestamp, toJson: Utilities.dateTimeToTimestamp, nullable: true)
          final DateTime? shift}) = _$_TaskModel;
  const _TaskModel._() : super._();

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$_TaskModel.fromJson;

  @override
  bool get reschedulable;
  @override
  @JsonKey(name: JsonKeys.id, nullable: true)
  String? get id;
  @override
  @JsonKey(name: JsonKeys.message)
  String get label;
  @override
  @JsonKey(name: JsonKeys.completed, defaultValue: false)
  bool get completed;
  @override
  @JsonKey(
      name: JsonKeys.shift,
      fromJson: Utilities.dateTimeFromTimestamp,
      toJson: Utilities.dateTimeToTimestamp,
      nullable: true)
  DateTime? get shift;
  @override
  @JsonKey(ignore: true)
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}
