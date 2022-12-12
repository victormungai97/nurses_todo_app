// lib/blocs/tasks/tasks_bloc.dart

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/controllers/controllers.dart';
import 'package:nurses_todo_app/models/models.dart';

part 'tasks_bloc.freezed.dart';
part 'tasks_event.dart';
part 'tasks_state.dart';

/// BLoC facilitating operation of tasks.

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  /// Constructor for ``[TasksBloc]``
  TasksBloc(this._tasksController) : super(const TasksInitial()) {
    on<_TasksStarted>((_, emit) => emit(const TasksState.initial()));
    on<_AllTasksRetrieved>(_obtainTasks);
    on<_ShiftTasksRetrieved>(_obtainTasks);
  }

  Future<void> _obtainTasks(
    TasksEvent event,
    Emitter<TasksState> emit,
  ) async {
    try {
      emit(const TasksState.load());

      dynamic res;

      if (event is _AllTasksRetrieved) {
        res = await _tasksController.getAllTasks();
      } else if (event is _ShiftTasksRetrieved) {
        res = await _tasksController.getShiftTasks(
          event.shift ?? DateTime.now(),
        );
      }

      if (res is String) {
        emit(TasksState.failure(exception: res));
      } else if (res is List<TaskModel>?) {
        if (event is _AllTasksRetrieved) {
          emit(TasksState.tasksSuccess(tasks: res));
        } else if (event is _ShiftTasksRetrieved) {
          emit(TasksState.shiftTaskSuccess(tasks: res));
        }
        return;
      } else {
        emit(const TasksState.failure(exception: Messages.weirdResponse));
      }
    } catch (error, stackTrace) {
      log(
        'Error in Tasks BLoC obtaining tasks\n$error',
        error: error,
        stackTrace: stackTrace,
        level: Level.SEVERE.value,
        time: DateTime.now(),
      );
      emit(const TasksState.failure(exception: Messages.unspecifiedError));
    }
  }

  final TasksController _tasksController;
}
