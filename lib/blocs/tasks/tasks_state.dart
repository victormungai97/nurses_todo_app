// lib/blocs/tasks/tasks_state.dart

part of 'tasks_bloc.dart';

/// Base class for individual tasks states

@freezed
class TasksState with _$TasksState {
  /// Initial state for tasks
  const factory TasksState.initial() = TasksInitial;

  /// Operation of shifts in progress
  const factory TasksState.load() = TasksLoading;

  /// All tasks retrieved successfully
  const factory TasksState.tasksSuccess({List<TaskModel>? tasks}) =
      TasksSuccess;

  /// Tasks for shift retrieved successfully
  const factory TasksState.shiftTaskSuccess({List<TaskModel>? tasks}) =
      ShiftTasksSuccess;

  /// Problem carrying out shift operation
  const factory TasksState.failure({required String exception}) = TasksFailure;
}
