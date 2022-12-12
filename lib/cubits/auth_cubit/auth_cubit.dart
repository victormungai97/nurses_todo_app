// lib/cubits/auth_cubit.dart

import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logging/logging.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/keys/keys.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

/// Cubit for handling update of a user's authentication state

class AuthCubit extends HydratedCubit<AuthState> {
  /// Constructor for ``[AuthCubit]``
  AuthCubit() : super(const Unauthenticated());

  /// Mark user as successfully signed in and authenticated
  Future<void> authenticate(String email, Role role) async {
    await clear();
    try {
      emit(AuthState.authenticated(email: email, role: role));
    } catch (e, stackTrace) {
      log('AUTHENTICATION ERROR',
          error: e, level: Level.SEVERE.value, stackTrace: stackTrace,);
      emit(const AuthState.unauthenticated());
    }
  }

  /// Sign user out of application
  Future<void> logout() async {
    await clear();
    emit(const AuthState.unauthenticated());
  }

  @override
  AuthState fromJson(Map<String, dynamic> json) {
    final authenticated = (json['authenticated'] ?? false) as bool;
    if (!authenticated) return const AuthState.unauthenticated();
    final user = json['user'] as Map<String, dynamic>?;
    if (user != null && user.isNotEmpty) {
      var role = Role.none;
      switch (user[JsonKeys.role]) {
        case null:
        case '':
          role = Role.none;
          break;
        case 'administrator':
          role = Role.admin;
          break;
        case 'nurse':
          role = Role.nurse;
          break;
      }
      return AuthState.authenticated(
        email: user[JsonKeys.emailAddress] as String,
        role: role,
      );
    }
    return const AuthState.unauthenticated();
  }

  @override
  Map<String, dynamic> toJson(AuthState state) {
    if (state is Authenticated) {
      String? role;
      switch (state.role) {
        case Role.none:
          role = '';
          break;
        case Role.admin:
          role = 'administrator';
          break;
        case Role.nurse:
          role = 'nurse';
          break;
      }
      return {
        'authenticated': true,
        'user': {
          JsonKeys.emailAddress: state.email,
          JsonKeys.role: role,
        }
      };
    }
    return {'authenticated': false, 'user': null};
  }
}
