// lib/navigation/navigation.dart

/// This directory contains the code that facilitates movement between and
/// redirection to different screens

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/cubits/cubits.dart';
import 'package:nurses_todo_app/keys/keys.dart';
// import 'package:nurses_todo_app/blocs/blocs.dart';
import 'package:nurses_todo_app/views/views.dart';

part 'refresh_stream.dart';

part 'routes.dart';

part 'router.dart';
