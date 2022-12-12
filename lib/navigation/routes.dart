// lib/navigation/routes.dart

part of 'navigation.dart';

/// Class containing paths (routes) representing the various pages in app.
/// This paths are then used in navigation, both internally and when sourced
/// from external sources e.g. URL in browser or deep/app links

class Routes {
  /// Path to the default page
  static const root = '/';

  /// Path to the login page
  static const login = '/login';

  /// Path to the shifts page
  static const shifts = '/shifts';

  /// Path to the tasks page
  static const tasks = '/tasks';
}
