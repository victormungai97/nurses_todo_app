// lib/blocs/shifts/shifts_event.dart

part of 'shifts_bloc.dart';

/// Base class for events handling shifts

@freezed
class ShiftsEvent with _$ShiftsEvent{
  /// Set up activity via an initial event
  const factory ShiftsEvent.initial() = _ShiftsStarted;

  /// Obtain added shifts
  const factory ShiftsEvent.retrieved() = _ShiftsRetrieved;

  /// Obtain added shifts that have not ended
  const factory ShiftsEvent.activeRetrieved() = _ActiveShiftsRetrieved;

  /// Obtain added shifts that have ended
  const factory ShiftsEvent.completedRetrieved() = _CompletedShiftsRetrieved;
}
