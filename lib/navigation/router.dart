// lib/navigation/router.dart

part of 'navigation.dart';

/// Custom class for Navigation

class AppRouter {
  /// Constructor

  AppRouter();

  /// Instance of `GoRouter` which facilitates navigation in this Flutter app
  /// by implementing Navigation API 2.0

  late final router = GoRouter(
    // Show debugging logs if app is in debug.
    debugLogDiagnostics: kIsWeb && kDebugMode,
    // Set all routes to be used
    routes: <GoRoute>[
      GoRoute(
        pageBuilder: (context, GoRouterState state) {
          /*final child = _environment != Environment.unspecified
              ? _authenticationBloc.state is Unauthenticated
                  ? kIsWeb
                      ? const HomePage()
                      : _environment == Environment.develop
                          ? const SplashPage()
                          : const LandingPage()
                  : const LandingPage()
              : ErrorScreen(Exception(translate(ErrorMessages.envNotSetup)));
          return CupertinoPage(key: const ValueKey(Routes.root), child: child);*/
          return CupertinoPage(child: const LoginPage(key: WidgetKeys.loginPage), key: const ValueKey(Routes.root),);
        },
        path: Routes.root,
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, GoRouterState state) => const LoginPage(key: WidgetKeys.loginPage,),
      ),
    ],
    // Declare first route to be rendered when app starts
    initialLocation: Routes.root,
  );
}
