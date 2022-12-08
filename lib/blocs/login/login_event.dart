
// lib/blocs/login/login_event.dart

part of 'login_bloc.dart';

/// Base class for logging in a user

@freezed
class LoginEvent with _$LoginEvent {
  /// Set up activity via an initial event
  const factory LoginEvent.initial() = _LoginStarted;

  /// Carry out the sign in activity
  const factory LoginEvent.userSignedIn({required String email, required String password, Role? role,}) = _UserSignedIn;

}
