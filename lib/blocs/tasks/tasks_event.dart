// lib/blocs/tasks/tasks_event.dart

part of 'tasks_bloc.dart';

/// Base class for events manipulating tasks

@freezed
class TasksEvent with _$TasksEvent {
  /// Set up activity via an initial task
  const factory TasksEvent.initial() = _TasksStarted;

  /// Obtain all tasks
  const factory TasksEvent.allTasksRetrieved() = _AllTasksRetrieved;

  /// Obtain tasks belonging to a shift
  const factory TasksEvent.shiftTasksRetrieved({required DateTime? shift}) = _ShiftTasksRetrieved;
}