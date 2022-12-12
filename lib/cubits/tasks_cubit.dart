// lib/cubits/tasks_cubit.dart

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';
import 'package:nurses_todo_app/extensions/extensions.dart';

/// Cubit to set shift time for a task
class TasksCubit extends Cubit<DateTime?> {
  /// Constructor for ``[TasksCubit]``
  TasksCubit() : super(null);

  /// Receive a date string and format it into date to then serve as shift time
  void updateShift(String? shift) {
    try {
      emit(shift.exists ? DateFormat("MMMM d, yyyy 'at' h:m:ss a").parse(shift!) : DateTime.now(),);
    } catch (error, stackTrace) {
      log('Error updating shifts', error: error, stackTrace: stackTrace, level: Level.SEVERE.value, time: DateTime.now(),);
    }
  }
}
