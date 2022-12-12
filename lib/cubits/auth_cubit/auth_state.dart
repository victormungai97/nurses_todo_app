part of 'auth_cubit.dart';

/// Base class for authentication states

@freezed
class AuthState with _$AuthState {
  /// State for a logged in user
  const factory AuthState.authenticated({
    required String email,
    required Role role,
  }) = Authenticated;

  /// State for user not logged in
  const factory AuthState.unauthenticated() = Unauthenticated;
}
