// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nurses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NurseModel _$NurseModelFromJson(Map<String, dynamic> json) {
  return _NurseModel.fromJson(json);
}

/// @nodoc
mixin _$NurseModel {
  @JsonKey(name: JsonKeys.firstName)
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeys.lastName)
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeys.emailAddress)
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeys.password)
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeys.employmentID)
  String get employmentID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NurseModelCopyWith<NurseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NurseModelCopyWith<$Res> {
  factory $NurseModelCopyWith(
          NurseModel value, $Res Function(NurseModel) then) =
      _$NurseModelCopyWithImpl<$Res, NurseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: JsonKeys.firstName) String firstName,
      @JsonKey(name: JsonKeys.lastName) String lastName,
      @JsonKey(name: JsonKeys.emailAddress) String email,
      @JsonKey(name: JsonKeys.password) String password,
      @JsonKey(name: JsonKeys.employmentID) String employmentID});
}

/// @nodoc
class _$NurseModelCopyWithImpl<$Res, $Val extends NurseModel>
    implements $NurseModelCopyWith<$Res> {
  _$NurseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
    Object? employmentID = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      employmentID: null == employmentID
          ? _value.employmentID
          : employmentID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NurseModelCopyWith<$Res>
    implements $NurseModelCopyWith<$Res> {
  factory _$$_NurseModelCopyWith(
          _$_NurseModel value, $Res Function(_$_NurseModel) then) =
      __$$_NurseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: JsonKeys.firstName) String firstName,
      @JsonKey(name: JsonKeys.lastName) String lastName,
      @JsonKey(name: JsonKeys.emailAddress) String email,
      @JsonKey(name: JsonKeys.password) String password,
      @JsonKey(name: JsonKeys.employmentID) String employmentID});
}

/// @nodoc
class __$$_NurseModelCopyWithImpl<$Res>
    extends _$NurseModelCopyWithImpl<$Res, _$_NurseModel>
    implements _$$_NurseModelCopyWith<$Res> {
  __$$_NurseModelCopyWithImpl(
      _$_NurseModel _value, $Res Function(_$_NurseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
    Object? employmentID = null,
  }) {
    return _then(_$_NurseModel(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      employmentID: null == employmentID
          ? _value.employmentID
          : employmentID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NurseModel extends _NurseModel {
  const _$_NurseModel(
      {@JsonKey(name: JsonKeys.firstName) required this.firstName,
      @JsonKey(name: JsonKeys.lastName) required this.lastName,
      @JsonKey(name: JsonKeys.emailAddress) required this.email,
      @JsonKey(name: JsonKeys.password) required this.password,
      @JsonKey(name: JsonKeys.employmentID) required this.employmentID})
      : super._();

  factory _$_NurseModel.fromJson(Map<String, dynamic> json) =>
      _$$_NurseModelFromJson(json);

  @override
  @JsonKey(name: JsonKeys.firstName)
  final String firstName;
  @override
  @JsonKey(name: JsonKeys.lastName)
  final String lastName;
  @override
  @JsonKey(name: JsonKeys.emailAddress)
  final String email;
  @override
  @JsonKey(name: JsonKeys.password)
  final String password;
  @override
  @JsonKey(name: JsonKeys.employmentID)
  final String employmentID;

  @override
  String toString() {
    return 'NurseModel(firstName: $firstName, lastName: $lastName, email: $email, password: $password, employmentID: $employmentID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NurseModel &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.employmentID, employmentID) ||
                other.employmentID == employmentID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, email, password, employmentID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NurseModelCopyWith<_$_NurseModel> get copyWith =>
      __$$_NurseModelCopyWithImpl<_$_NurseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NurseModelToJson(
      this,
    );
  }
}

abstract class _NurseModel extends NurseModel {
  const factory _NurseModel(
      {@JsonKey(name: JsonKeys.firstName)
          required final String firstName,
      @JsonKey(name: JsonKeys.lastName)
          required final String lastName,
      @JsonKey(name: JsonKeys.emailAddress)
          required final String email,
      @JsonKey(name: JsonKeys.password)
          required final String password,
      @JsonKey(name: JsonKeys.employmentID)
          required final String employmentID}) = _$_NurseModel;
  const _NurseModel._() : super._();

  factory _NurseModel.fromJson(Map<String, dynamic> json) =
      _$_NurseModel.fromJson;

  @override
  @JsonKey(name: JsonKeys.firstName)
  String get firstName;
  @override
  @JsonKey(name: JsonKeys.lastName)
  String get lastName;
  @override
  @JsonKey(name: JsonKeys.emailAddress)
  String get email;
  @override
  @JsonKey(name: JsonKeys.password)
  String get password;
  @override
  @JsonKey(name: JsonKeys.employmentID)
  String get employmentID;
  @override
  @JsonKey(ignore: true)
  _$$_NurseModelCopyWith<_$_NurseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
