// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'administrators.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdministratorModel _$AdministratorModelFromJson(Map<String, dynamic> json) {
  return _AdministratorModel.fromJson(json);
}

/// @nodoc
mixin _$AdministratorModel {
  @JsonKey(name: JsonKeys.firstName)
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeys.lastName)
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeys.emailAddress)
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeys.password)
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdministratorModelCopyWith<AdministratorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdministratorModelCopyWith<$Res> {
  factory $AdministratorModelCopyWith(
          AdministratorModel value, $Res Function(AdministratorModel) then) =
      _$AdministratorModelCopyWithImpl<$Res, AdministratorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: JsonKeys.firstName) String firstName,
      @JsonKey(name: JsonKeys.lastName) String lastName,
      @JsonKey(name: JsonKeys.emailAddress) String email,
      @JsonKey(name: JsonKeys.password) String password});
}

/// @nodoc
class _$AdministratorModelCopyWithImpl<$Res, $Val extends AdministratorModel>
    implements $AdministratorModelCopyWith<$Res> {
  _$AdministratorModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdministratorModelCopyWith<$Res>
    implements $AdministratorModelCopyWith<$Res> {
  factory _$$_AdministratorModelCopyWith(_$_AdministratorModel value,
          $Res Function(_$_AdministratorModel) then) =
      __$$_AdministratorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: JsonKeys.firstName) String firstName,
      @JsonKey(name: JsonKeys.lastName) String lastName,
      @JsonKey(name: JsonKeys.emailAddress) String email,
      @JsonKey(name: JsonKeys.password) String password});
}

/// @nodoc
class __$$_AdministratorModelCopyWithImpl<$Res>
    extends _$AdministratorModelCopyWithImpl<$Res, _$_AdministratorModel>
    implements _$$_AdministratorModelCopyWith<$Res> {
  __$$_AdministratorModelCopyWithImpl(
      _$_AdministratorModel _value, $Res Function(_$_AdministratorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_AdministratorModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdministratorModel extends _AdministratorModel {
  const _$_AdministratorModel(
      {@JsonKey(name: JsonKeys.firstName) required this.firstName,
      @JsonKey(name: JsonKeys.lastName) required this.lastName,
      @JsonKey(name: JsonKeys.emailAddress) required this.email,
      @JsonKey(name: JsonKeys.password) required this.password})
      : super._();

  factory _$_AdministratorModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdministratorModelFromJson(json);

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
  String toString() {
    return 'AdministratorModel(firstName: $firstName, lastName: $lastName, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdministratorModel &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdministratorModelCopyWith<_$_AdministratorModel> get copyWith =>
      __$$_AdministratorModelCopyWithImpl<_$_AdministratorModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdministratorModelToJson(
      this,
    );
  }
}

abstract class _AdministratorModel extends AdministratorModel {
  const factory _AdministratorModel(
          {@JsonKey(name: JsonKeys.firstName) required final String firstName,
          @JsonKey(name: JsonKeys.lastName) required final String lastName,
          @JsonKey(name: JsonKeys.emailAddress) required final String email,
          @JsonKey(name: JsonKeys.password) required final String password}) =
      _$_AdministratorModel;
  const _AdministratorModel._() : super._();

  factory _AdministratorModel.fromJson(Map<String, dynamic> json) =
      _$_AdministratorModel.fromJson;

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
  @JsonKey(ignore: true)
  _$$_AdministratorModelCopyWith<_$_AdministratorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
