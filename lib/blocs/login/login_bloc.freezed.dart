// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email, String password, Role? role)
        userSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email, String password, Role? role)? userSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email, String password, Role? role)? userSignedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStarted value) initial,
    required TResult Function(_UserSignedIn value) userSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStarted value)? initial,
    TResult? Function(_UserSignedIn value)? userSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStarted value)? initial,
    TResult Function(_UserSignedIn value)? userSignedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginStartedCopyWith<$Res> {
  factory _$$_LoginStartedCopyWith(
          _$_LoginStarted value, $Res Function(_$_LoginStarted) then) =
      __$$_LoginStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginStartedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginStarted>
    implements _$$_LoginStartedCopyWith<$Res> {
  __$$_LoginStartedCopyWithImpl(
      _$_LoginStarted _value, $Res Function(_$_LoginStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginStarted implements _LoginStarted {
  const _$_LoginStarted();

  @override
  String toString() {
    return 'LoginEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email, String password, Role? role)
        userSignedIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email, String password, Role? role)? userSignedIn,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email, String password, Role? role)? userSignedIn,
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
    required TResult Function(_LoginStarted value) initial,
    required TResult Function(_UserSignedIn value) userSignedIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStarted value)? initial,
    TResult? Function(_UserSignedIn value)? userSignedIn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStarted value)? initial,
    TResult Function(_UserSignedIn value)? userSignedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LoginStarted implements LoginEvent {
  const factory _LoginStarted() = _$_LoginStarted;
}

/// @nodoc
abstract class _$$_UserSignedInCopyWith<$Res> {
  factory _$$_UserSignedInCopyWith(
          _$_UserSignedIn value, $Res Function(_$_UserSignedIn) then) =
      __$$_UserSignedInCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, Role? role});
}

/// @nodoc
class __$$_UserSignedInCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_UserSignedIn>
    implements _$$_UserSignedInCopyWith<$Res> {
  __$$_UserSignedInCopyWithImpl(
      _$_UserSignedIn _value, $Res Function(_$_UserSignedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? role = freezed,
  }) {
    return _then(_$_UserSignedIn(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ));
  }
}

/// @nodoc

class _$_UserSignedIn implements _UserSignedIn {
  const _$_UserSignedIn(
      {required this.email, required this.password, this.role});

  @override
  final String email;
  @override
  final String password;
  @override
  final Role? role;

  @override
  String toString() {
    return 'LoginEvent.userSignedIn(email: $email, password: $password, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSignedIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserSignedInCopyWith<_$_UserSignedIn> get copyWith =>
      __$$_UserSignedInCopyWithImpl<_$_UserSignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email, String password, Role? role)
        userSignedIn,
  }) {
    return userSignedIn(email, password, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email, String password, Role? role)? userSignedIn,
  }) {
    return userSignedIn?.call(email, password, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email, String password, Role? role)? userSignedIn,
    required TResult orElse(),
  }) {
    if (userSignedIn != null) {
      return userSignedIn(email, password, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStarted value) initial,
    required TResult Function(_UserSignedIn value) userSignedIn,
  }) {
    return userSignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStarted value)? initial,
    TResult? Function(_UserSignedIn value)? userSignedIn,
  }) {
    return userSignedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStarted value)? initial,
    TResult Function(_UserSignedIn value)? userSignedIn,
    required TResult orElse(),
  }) {
    if (userSignedIn != null) {
      return userSignedIn(this);
    }
    return orElse();
  }
}

abstract class _UserSignedIn implements LoginEvent {
  const factory _UserSignedIn(
      {required final String email,
      required final String password,
      final Role? role}) = _$_UserSignedIn;

  String get email;
  String get password;
  Role? get role;
  @JsonKey(ignore: true)
  _$$_UserSignedInCopyWith<_$_UserSignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function() success,
    required TResult Function(String exception) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function()? success,
    TResult? Function(String exception)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function()? success,
    TResult Function(String exception)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) load,
    required TResult Function(LoginUserSuccess value) success,
    required TResult Function(LoginFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? load,
    TResult? Function(LoginUserSuccess value)? success,
    TResult? Function(LoginFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? load,
    TResult Function(LoginUserSuccess value)? success,
    TResult Function(LoginFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginInitialCopyWith<$Res> {
  factory _$$LoginInitialCopyWith(
          _$LoginInitial value, $Res Function(_$LoginInitial) then) =
      __$$LoginInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginInitial>
    implements _$$LoginInitialCopyWith<$Res> {
  __$$LoginInitialCopyWithImpl(
      _$LoginInitial _value, $Res Function(_$LoginInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginInitial implements LoginInitial {
  const _$LoginInitial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function() success,
    required TResult Function(String exception) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function()? success,
    TResult? Function(String exception)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function()? success,
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
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) load,
    required TResult Function(LoginUserSuccess value) success,
    required TResult Function(LoginFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? load,
    TResult? Function(LoginUserSuccess value)? success,
    TResult? Function(LoginFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? load,
    TResult Function(LoginUserSuccess value)? success,
    TResult Function(LoginFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginInitial implements LoginState {
  const factory LoginInitial() = _$LoginInitial;
}

/// @nodoc
abstract class _$$LoginLoadingCopyWith<$Res> {
  factory _$$LoginLoadingCopyWith(
          _$LoginLoading value, $Res Function(_$LoginLoading) then) =
      __$$LoginLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoading>
    implements _$$LoginLoadingCopyWith<$Res> {
  __$$LoginLoadingCopyWithImpl(
      _$LoginLoading _value, $Res Function(_$LoginLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginLoading implements LoginLoading {
  const _$LoginLoading();

  @override
  String toString() {
    return 'LoginState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function() success,
    required TResult Function(String exception) failure,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function()? success,
    TResult? Function(String exception)? failure,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function()? success,
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
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) load,
    required TResult Function(LoginUserSuccess value) success,
    required TResult Function(LoginFailure value) failure,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? load,
    TResult? Function(LoginUserSuccess value)? success,
    TResult? Function(LoginFailure value)? failure,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? load,
    TResult Function(LoginUserSuccess value)? success,
    TResult Function(LoginFailure value)? failure,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoginLoading implements LoginState {
  const factory LoginLoading() = _$LoginLoading;
}

/// @nodoc
abstract class _$$LoginUserSuccessCopyWith<$Res> {
  factory _$$LoginUserSuccessCopyWith(
          _$LoginUserSuccess value, $Res Function(_$LoginUserSuccess) then) =
      __$$LoginUserSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginUserSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginUserSuccess>
    implements _$$LoginUserSuccessCopyWith<$Res> {
  __$$LoginUserSuccessCopyWithImpl(
      _$LoginUserSuccess _value, $Res Function(_$LoginUserSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginUserSuccess implements LoginUserSuccess {
  const _$LoginUserSuccess();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginUserSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function() success,
    required TResult Function(String exception) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function()? success,
    TResult? Function(String exception)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function()? success,
    TResult Function(String exception)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) load,
    required TResult Function(LoginUserSuccess value) success,
    required TResult Function(LoginFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? load,
    TResult? Function(LoginUserSuccess value)? success,
    TResult? Function(LoginFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? load,
    TResult Function(LoginUserSuccess value)? success,
    TResult Function(LoginFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginUserSuccess implements LoginState {
  const factory LoginUserSuccess() = _$LoginUserSuccess;
}

/// @nodoc
abstract class _$$LoginFailureCopyWith<$Res> {
  factory _$$LoginFailureCopyWith(
          _$LoginFailure value, $Res Function(_$LoginFailure) then) =
      __$$LoginFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String exception});
}

/// @nodoc
class __$$LoginFailureCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginFailure>
    implements _$$LoginFailureCopyWith<$Res> {
  __$$LoginFailureCopyWithImpl(
      _$LoginFailure _value, $Res Function(_$LoginFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$LoginFailure(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFailure implements LoginFailure {
  const _$LoginFailure({required this.exception});

  @override
  final String exception;

  @override
  String toString() {
    return 'LoginState.failure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailure &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailureCopyWith<_$LoginFailure> get copyWith =>
      __$$LoginFailureCopyWithImpl<_$LoginFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() load,
    required TResult Function() success,
    required TResult Function(String exception) failure,
  }) {
    return failure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? load,
    TResult? Function()? success,
    TResult? Function(String exception)? failure,
  }) {
    return failure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? load,
    TResult Function()? success,
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
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) load,
    required TResult Function(LoginUserSuccess value) success,
    required TResult Function(LoginFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? load,
    TResult? Function(LoginUserSuccess value)? success,
    TResult? Function(LoginFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? load,
    TResult Function(LoginUserSuccess value)? success,
    TResult Function(LoginFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class LoginFailure implements LoginState {
  const factory LoginFailure({required final String exception}) =
      _$LoginFailure;

  String get exception;
  @JsonKey(ignore: true)
  _$$LoginFailureCopyWith<_$LoginFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
