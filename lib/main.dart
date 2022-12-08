// lib/main.dart

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nurses_todo_app/blocs/blocs.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/controllers/controllers.dart';
import 'package:nurses_todo_app/firebase_options.dart';
import 'package:nurses_todo_app/keys/keys.dart';
import 'package:nurses_todo_app/navigation/navigation.dart';
import 'package:nurses_todo_app/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp(key: WidgetKeys.rootApplication));
}

/// Root widget
class MyApp extends StatelessWidget {
  /// Constructor for root widget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter().router;
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<EncryptionInterface>(
          create: (context) => EncryptionService(),
        ),
        RepositoryProvider<DataInterface>(
          create: (context) => DataService(),
        ),
      ],
      child: RepositoryProvider<LoginController>(
        create: (context) => LoginController(
          dataService: context.read<DataService>(),
          encryptionService: context.read<EncryptionService>(),
        ),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<LoginBloc>(
              create: (context) => LoginBloc(context.read<LoginController>()),
            ),
          ],
          child: MaterialApp.router(
            routeInformationProvider: router.routeInformationProvider,
            debugShowCheckedModeBanner: false,
            theme: AppThemes.appTheme,
            title: Labels.appName,
            routerDelegate: router.routerDelegate,
            routeInformationParser: router.routeInformationParser,
          ),
        ),
      ),
    );
  }
}
