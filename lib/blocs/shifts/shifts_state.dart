// lib/blocs/shifts/shifts_state.dart

part of 'shifts_bloc.dart';

/// Base class for individual shifts states

@freezed
class ShiftsState with _$ShiftsState {
  /// Initial state for shifts
  const factory ShiftsState.initial() = ShiftsInitial;

  /// Operation of shifts in progress
  const factory ShiftsState.load() = ShiftsLoading;

  /// Shifts retrieved successfully
  const factory ShiftsState.obtainSuccess({List<ShiftsModel>? shifts}) = ShiftsObtainSuccess;

  /// Problem carrying out shift operation
  const factory ShiftsState.failure({required String exception}) = ShitfsFailure;
}
