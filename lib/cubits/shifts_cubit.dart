// lib/cubits/shifts_cubit.dart

import 'package:bloc/bloc.dart';

/// Cubit to alternate between completed and ongoing shifts
class ShiftsCubit extends Cubit<bool> {
  /// Constructor for ``[ShiftsCubit]``
  ShiftsCubit() : super(true);

  /// Switch between ``true`` (active shifts) and ``false`` (completed shifts)
  void toggleShifts() => emit(!state);
}
