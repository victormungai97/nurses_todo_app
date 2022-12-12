// lib/constants/src/strings/messages.dart

part of 'strings.dart';

/// Responses to various scenarios

class Messages {
  /// Unspecified error
  static const unspecifiedError = 'Something went wrong. Contact support';

  /// Email missing
  static const emailMissing = 'Please provide the email address';

  /// Invalid email
  static const invalidEmail = 'Email address provided is invalid';

  /// No user
  static const noUser = 'User not found';

  /// Password missing
  static const passwordMissing = 'Password not provided';

  /// Mismatch of password
  static const mismatchedPassword = 'Incorrect password provided';

  /// No response
  static const emptyResponse = 'No response found';

  /// Unexpected response
  static const weirdResponse = 'Unexpected response received';

  /// No shifts found
  static const noShifts = 'No shifts found';

  /// Shift not found
  static const shiftMissing = 'Shift not found';

  /// No tasks found
  static const noTasks = 'No tasks found';

  /// Task not found
  static const taskMissing = 'Task not found';
}
