// lib/main.dart

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:nurses_todo_app/bloc_observer.dart';
import 'package:nurses_todo_app/blocs/blocs.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/controllers/controllers.dart';
import 'package:nurses_todo_app/cubits/cubits.dart';
import 'package:nurses_todo_app/firebase_options.dart';
import 'package:nurses_todo_app/keys/keys.dart';
import 'package:nurses_todo_app/navigation/navigation.dart';
import 'package:nurses_todo_app/services/services.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // set up to start up bloc
  Bloc.observer = SimpleBlocObserver();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  // start widget tree
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<EncryptionInterface>(
          create: (context) => EncryptionService(),
        ),
        RepositoryProvider<DataInterface>(create: (context) => DataService()),
      ],
      child: const MyApp(key: WidgetKeys.rootApplication),
    ),
  );
}

/// Root widget
class MyApp extends StatelessWidget {
  /// Constructor for root widget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<LoginController>(
      create: (context) => LoginController(
        dataService: context.read<DataInterface>(),
        encryptionService: context.read<EncryptionInterface>(),
      ),
      child: RepositoryProvider(
        create: (context) => ShiftsController(
          dataService: context.read<DataInterface>(),
        ),
        child: RepositoryProvider(
          create: (context) => TasksController(
            dataService: context.read<DataInterface>(),
          ),
          child: MultiBlocProvider(
            providers: [
              BlocProvider<LoginBloc>(
                create: (context) => LoginBloc(context.read<LoginController>()),
              ),
              BlocProvider<AuthCubit>(create: (context) => AuthCubit()),
              BlocProvider<RolesCubit>(create: (context) => RolesCubit()),
              BlocProvider<ShiftsBloc>(
                create: (context) =>
                    ShiftsBloc(context.read<ShiftsController>()),
              ),
              BlocProvider<ShiftsCubit>(create: (context) => ShiftsCubit()),
              BlocProvider<TasksBloc>(
                create: (context) => TasksBloc(context.read<TasksController>()),
              ),
              BlocProvider<TasksCubit>(create: (context) => TasksCubit()),
            ],
            child: Builder(
              builder: (context) {
                return RepositoryProvider<AppRouter>(
                  create: (_) => AppRouter(context.read<AuthCubit>()),
                  child: Builder(
                    builder: (context) {
                      final router = context.read<AppRouter>().router;
                      return MaterialApp.router(
                        routeInformationProvider:
                            router.routeInformationProvider,
                        debugShowCheckedModeBanner: false,
                        theme: AppThemes.appTheme,
                        title: Labels.appName,
                        routerDelegate: router.routerDelegate,
                        routeInformationParser: router.routeInformationParser,
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
