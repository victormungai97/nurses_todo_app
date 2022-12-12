// lib/blocs/shifts/shifts_bloc.dart

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/controllers/controllers.dart';
import 'package:nurses_todo_app/models/models.dart';

part 'shifts_bloc.freezed.dart';
part 'shifts_event.dart';
part 'shifts_state.dart';

/// BLoC facilitating operation of shifts.

class ShiftsBloc extends Bloc<ShiftsEvent, ShiftsState> {
  /// Constructor for ``[ShiftsBloc]``
  ShiftsBloc(this._shiftsController) : super(const ShiftsInitial()) {
    on<_ShiftsRetrieved>(_obtainShifts);
    on<_ActiveShiftsRetrieved>(_obtainShifts);
    on<_CompletedShiftsRetrieved>(_obtainShifts);
  }

  Future<void> _obtainShifts(
    ShiftsEvent event,
    Emitter<ShiftsState> emit,
  ) async {
    try {
      emit(const ShiftsState.load());

      dynamic res;

      if (event is _ActiveShiftsRetrieved) {
        res = await _shiftsController.getActiveShifts();
      } else if (event is _CompletedShiftsRetrieved) {
        res = await _shiftsController.getCompletedShifts();
      } else if (event is _ShiftsRetrieved) {
        res = await _shiftsController.getShifts();
      }

      if (res is String) {
        emit(ShiftsState.failure(exception: res));
      } else if (res is List<ShiftsModel>?) {
        emit(ShiftsState.obtainSuccess(shifts: res));
      } else {
        emit(const ShiftsState.failure(exception: Messages.weirdResponse));
      }
    } catch (error, stackTrace) {
      log(
        'Error in Shifts BLoC obtaining shifts\n$error',
        error: error,
        stackTrace: stackTrace,
        level: Level.SEVERE.value,
        time: DateTime.now(),
      );
      emit(const ShiftsState.failure(exception: Messages.unspecifiedError));
    }
  }

  final ShiftsController _shiftsController;
}
