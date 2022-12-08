// lib/blocs/login/login_state.dart

part of 'login_bloc.dart';

/// Base class for individual login states

@freezed
class LoginState with _$LoginState {
  /// Initial state for login
  const factory LoginState.initial() = LoginInitial;

  /// Login in progress
  const factory LoginState.load() = LoginLoading;

  /// Sign in action completed successfully
  const factory LoginState.create() = LoginUserSuccess;

  /// Problem carrying out sign in
  const factory LoginState.failure({required String exception}) = LoginFailure;
}
