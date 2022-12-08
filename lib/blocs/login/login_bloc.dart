// lib/blocs/login/login_bloc.dart

import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/controllers/controllers.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

/// BLoC facilitating signing in of a user.

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  /// Constructor for ``[LoginBloc]``
  LoginBloc(this._loginController) : super(const LoginInitial()) {
    on<_UserSignedIn>(_signUserIn);
  }

  Future<void> _signUserIn(_UserSignedIn event, Emitter<LoginState> emit) async {
    try {
      emit(const LoginState.load());

      final res = _loginController.signUserIn(email: event.email, password: event.password, role: event.role,);
    } catch (error, stackTrace) {
      log(
        'Error in Login BLoC signing user in\n$error',
        error: error,
        stackTrace: stackTrace,
        level: Level.SEVERE.value,
        time: DateTime.now(),
      );
      emit(const LoginState.failure(exception: Messages.unspecifiedError));
    }
  }
  
  final LoginController _loginController;
}
