// lib/views/login/login.dart

import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nurses_todo_app/blocs/blocs.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/cubits/cubits.dart';
import 'package:nurses_todo_app/keys/keys.dart';
import 'package:nurses_todo_app/navigation/navigation.dart';
import 'package:nurses_todo_app/widgets/widgets.dart';

part 'bloc.dart';
part 'body.dart';

/// This page shall render the user interface for signing into the application

class LoginPage extends StatelessWidget {
  /// Constructor for ``[LoginPage]``
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<LoginFormBloc>(
          create: (context) => LoginFormBloc(),
          child: const _Body(key: WidgetKeys.loginBody),),
      appBar: AppTitle(context),
      // resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).canvasColor,
    );
  }
}
