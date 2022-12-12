// lib/cubits/roles_cubit.dart

import 'package:bloc/bloc.dart';

import 'package:nurses_todo_app/constants/constants.dart';

/// Cubit to detect the access level that a user is logging in as
class RolesCubit extends Cubit<Role> {
  /// Constructor for ``[RolesCubit]``
  RolesCubit() : super(Role.none);

  /// Set the ``[role]`` here
  void updateRole(Role role) => emit(role);
}
