// lib/bloc_observer.dart

import 'dart:developer';

import 'package:bloc/bloc.dart';

/// This class enables detecting bloc changes
/// by listening at the various stages of a bloc life cycle
/// as provided by the overridden methods

class SimpleBlocObserver extends BlocObserver {
  static DateTime get _now => DateTime.now();

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    log('onCreate -- ${bloc.runtimeType}', time: _now, level: 700);
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    log('onEvent -- ${bloc.runtimeType}, $event', time: _now, level: 700);
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange -- ${bloc.runtimeType}, $change', time: _now, level: 700);
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    log(
      'onTransition -- ${bloc.runtimeType}, $transition',
      time: _now,
      level: 700,
    );
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log(
      'onError -- ${bloc.runtimeType}',
      time: _now,
      level: 1000,
      error: error,
      stackTrace: stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    log('onClose -- ${bloc.runtimeType}', time: _now, level: 700);
  }
}
