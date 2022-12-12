// lib/navigation/router.dart

part of 'navigation.dart';

/// Custom class for Navigation

class AppRouter {
  /// Constructor for ``[AppRouter]``

  AppRouter(this._authenticationCubit);

  /// Instance of `GoRouter` which facilitates navigation in this Flutter app
  /// by implementing Navigation API 2.0

  late final router = GoRouter(
    // Show debugging logs if app is in debug.
    debugLogDiagnostics: kIsWeb && kDebugMode,
    // Set all routes to be used
    routes: <GoRoute>[
      GoRoute(
        pageBuilder: (context, GoRouterState state) {
          Widget child = const LoginPage(key: WidgetKeys.loginPage);
          final authState = _authenticationCubit.state;
          if (authState is Authenticated) {
            if (authState.role == Role.nurse) {
              child = const ShiftsPage(key: WidgetKeys.shiftsPage);
            }
          }
          return CupertinoPage(child: child,
            key: const ValueKey(Routes.root)
          );
        },
        path: Routes.root,
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, GoRouterState state) => const LoginPage(
          key: WidgetKeys.loginPage,
        ),
      ),
      GoRoute(
        path: Routes.shifts,
        builder: (context, GoRouterState state) => const ShiftsPage(
          key: WidgetKeys.shiftsPage,
        ),
      ),
      GoRoute(
        path: Routes.tasks,
        builder: (context, GoRouterState state) {
          context.read<TasksCubit>().updateShift(state.queryParams['shift']);
          return const TasksPage(
          key: WidgetKeys.tasksPage
        );},
      ),
    ],
    redirect: (context, state) {
      final bloc = context.read<AuthCubit>();

      // Checks if the user is going to the login location.
      final isLoggingIn = {Routes.root, Routes.login}.contains(state.location);

      // Checks if the user is logged in.
      final isLoggedIn =
          bloc.state is Authenticated;

      // Verifies that the current location is not the Login page
      if (isLoggedIn && isLoggingIn) {
        // If the current location is the Login page & the user is logged in,
        // go to the Shifts screen.
        return Routes.shifts;
      }
      if (!isLoggedIn && !isLoggingIn) {
        // If the current location's not Login page & the user's not logged in,
        // go to the Login screen.
        return Routes.login;
      }

      // Allow default navigation to continue (no redirection)

      return null;
    },
    // Set the router to listen for changes to the loginState.
    refreshListenable: _GoRouterRefreshStream(_authenticationCubit.stream),
    // Declare first route to be rendered when app starts
    initialLocation: Routes.root,
  );

  // Keep track of the user's logged in state
  final AuthCubit _authenticationCubit;

}
