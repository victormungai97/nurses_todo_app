// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shifts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShiftsModel _$ShiftsModelFromJson(Map<String, dynamic> json) {
  return _ShiftsModel.fromJson(json);
}

/// @nodoc
mixin _$ShiftsModel {
  @JsonKey(name: JsonKeys.designation)
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeys.nurses)
  List<String> get workers => throw _privateConstructorUsedError;
  @JsonKey(
      name: JsonKeys.start,
      fromJson: Utilities.dateTimeFromTimestamp,
      toJson: Utilities.dateTimeToTimestamp,
      nullable: true)
  DateTime? get begin => throw _privateConstructorUsedError;
  @JsonKey(
      name: JsonKeys.end,
      fromJson: Utilities.dateTimeFromTimestamp,
      toJson: Utilities.dateTimeToTimestamp,
      nullable: true)
  DateTime? get finish => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftsModelCopyWith<ShiftsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftsModelCopyWith<$Res> {
  factory $ShiftsModelCopyWith(
          ShiftsModel value, $Res Function(ShiftsModel) then) =
      _$ShiftsModelCopyWithImpl<$Res, ShiftsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: JsonKeys.designation)
          String label,
      @JsonKey(name: JsonKeys.nurses)
          List<String> workers,
      @JsonKey(name: JsonKeys.start, fromJson: Utilities.dateTimeFromTimestamp, toJson: Utilities.dateTimeToTimestamp, nullable: true)
          DateTime? begin,
      @JsonKey(name: JsonKeys.end, fromJson: Utilities.dateTimeFromTimestamp, toJson: Utilities.dateTimeToTimestamp, nullable: true)
          DateTime? finish});
}

/// @nodoc
class _$ShiftsModelCopyWithImpl<$Res, $Val extends ShiftsModel>
    implements $ShiftsModelCopyWith<$Res> {
  _$ShiftsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? workers = null,
    Object? begin = freezed,
    Object? finish = freezed,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      workers: null == workers
          ? _value.workers
          : workers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      begin: freezed == begin
          ? _value.begin
          : begin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finish: freezed == finish
          ? _value.finish
          : finish // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShiftsModelCopyWith<$Res>
    implements $ShiftsModelCopyWith<$Res> {
  factory _$$_ShiftsModelCopyWith(
          _$_ShiftsModel value, $Res Function(_$_ShiftsModel) then) =
      __$$_ShiftsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: JsonKeys.designation)
          String label,
      @JsonKey(name: JsonKeys.nurses)
          List<String> workers,
      @JsonKey(name: JsonKeys.start, fromJson: Utilities.dateTimeFromTimestamp, toJson: Utilities.dateTimeToTimestamp, nullable: true)
          DateTime? begin,
      @JsonKey(name: JsonKeys.end, fromJson: Utilities.dateTimeFromTimestamp, toJson: Utilities.dateTimeToTimestamp, nullable: true)
          DateTime? finish});
}

/// @nodoc
class __$$_ShiftsModelCopyWithImpl<$Res>
    extends _$ShiftsModelCopyWithImpl<$Res, _$_ShiftsModel>
    implements _$$_ShiftsModelCopyWith<$Res> {
  __$$_ShiftsModelCopyWithImpl(
      _$_ShiftsModel _value, $Res Function(_$_ShiftsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? workers = null,
    Object? begin = freezed,
    Object? finish = freezed,
  }) {
    return _then(_$_ShiftsModel(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      workers: null == workers
          ? _value._workers
          : workers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      begin: freezed == begin
          ? _value.begin
          : begin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finish: freezed == finish
          ? _value.finish
          : finish // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShiftsModel extends _ShiftsModel {
  const _$_ShiftsModel(
      {@JsonKey(name: JsonKeys.designation)
          required this.label,
      @JsonKey(name: JsonKeys.nurses)
          required final List<String> workers,
      @JsonKey(name: JsonKeys.start, fromJson: Utilities.dateTimeFromTimestamp, toJson: Utilities.dateTimeToTimestamp, nullable: true)
          this.begin,
      @JsonKey(name: JsonKeys.end, fromJson: Utilities.dateTimeFromTimestamp, toJson: Utilities.dateTimeToTimestamp, nullable: true)
          this.finish})
      : _workers = workers,
        super._();

  factory _$_ShiftsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShiftsModelFromJson(json);

  @override
  @JsonKey(name: JsonKeys.designation)
  final String label;
  final List<String> _workers;
  @override
  @JsonKey(name: JsonKeys.nurses)
  List<String> get workers {
    if (_workers is EqualUnmodifiableListView) return _workers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workers);
  }

  @override
  @JsonKey(
      name: JsonKeys.start,
      fromJson: Utilities.dateTimeFromTimestamp,
      toJson: Utilities.dateTimeToTimestamp,
      nullable: true)
  final DateTime? begin;
  @override
  @JsonKey(
      name: JsonKeys.end,
      fromJson: Utilities.dateTimeFromTimestamp,
      toJson: Utilities.dateTimeToTimestamp,
      nullable: true)
  final DateTime? finish;

  @override
  String toString() {
    return 'ShiftsModel(label: $label, workers: $workers, begin: $begin, finish: $finish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShiftsModel &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other._workers, _workers) &&
            (identical(other.begin, begin) || other.begin == begin) &&
            (identical(other.finish, finish) || other.finish == finish));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label,
      const DeepCollectionEquality().hash(_workers), begin, finish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShiftsModelCopyWith<_$_ShiftsModel> get copyWith =>
      __$$_ShiftsModelCopyWithImpl<_$_ShiftsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShiftsModelToJson(
      this,
    );
  }
}

abstract class _ShiftsModel extends ShiftsModel {
  const factory _ShiftsModel(
      {@JsonKey(name: JsonKeys.designation)
          required final String label,
      @JsonKey(name: JsonKeys.nurses)
          required final List<String> workers,
      @JsonKey(name: JsonKeys.start, fromJson: Utilities.dateTimeFromTimestamp, toJson: Utilities.dateTimeToTimestamp, nullable: true)
          final DateTime? begin,
      @JsonKey(name: JsonKeys.end, fromJson: Utilities.dateTimeFromTimestamp, toJson: Utilities.dateTimeToTimestamp, nullable: true)
          final DateTime? finish}) = _$_ShiftsModel;
  const _ShiftsModel._() : super._();

  factory _ShiftsModel.fromJson(Map<String, dynamic> json) =
      _$_ShiftsModel.fromJson;

  @override
  @JsonKey(name: JsonKeys.designation)
  String get label;
  @override
  @JsonKey(name: JsonKeys.nurses)
  List<String> get workers;
  @override
  @JsonKey(
      name: JsonKeys.start,
      fromJson: Utilities.dateTimeFromTimestamp,
      toJson: Utilities.dateTimeToTimestamp,
      nullable: true)
  DateTime? get begin;
  @override
  @JsonKey(
      name: JsonKeys.end,
      fromJson: Utilities.dateTimeFromTimestamp,
      toJson: Utilities.dateTimeToTimestamp,
      nullable: true)
  DateTime? get finish;
  @override
  @JsonKey(ignore: true)
  _$$_ShiftsModelCopyWith<_$_ShiftsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
