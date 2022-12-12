// lib/keys/widgets.dart

part of 'keys.dart';

/// Unique keys for widgets

class WidgetKeys {
  WidgetKeys._();

  /// Root application key
  static const rootApplication = ValueKey('RootApplication');

  /// Home page key
  static const homePage = ValueKey('HomePage');

  /// Login page key
  static const loginPage = ValueKey('LoginPage');

  /// Login body key
  static const loginBody = ValueKey('LoginBody');

  /// Shifts page key
  static const shiftsPage = ValueKey('ShiftsPage');

  /// Shifts body key
  static const shiftsBody = ValueKey('ShiftsBody');

  /// Tasks page key
  static const tasksPage = ValueKey('TasksPage');

  /// Tasks body key
  static const tasksBody = ValueKey('TasksBody');

  /// Key for all tasks widget
  static const allTasksView = ValueKey('AllTasksView');

  /// Key for shift tasks widget
  static const shiftTasksView = ValueKey('ShiftTasksView');
}
