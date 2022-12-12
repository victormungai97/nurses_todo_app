// lib/views/shifts/components/alternate.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nurses_todo_app/blocs/blocs.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/cubits/cubits.dart';

/// Widget to alternate shifts

class ToggleShiftWidget extends StatelessWidget {
  /// Constructor for ``[ToggleShiftWidget]``
  const ToggleShiftWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final shiftsCubit = context.watch<ShiftsCubit>();
    return ListTile(trailing: Icon(!shiftsCubit.state ? Icons.toggle_on : Icons.toggle_off_outlined, size: 32,
      color: shiftsCubit.state ? Colors.green : Colors.pinkAccent,),
    onTap: () {
      shiftsCubit.toggleShifts();
      context.read<ShiftsBloc>().add(shiftsCubit.state ? const ShiftsEvent.activeRetrieved(): const ShiftsEvent.completedRetrieved(),);
    },
      leading: const Icon(Icons.drag_indicator, size: 32),
    title: Text(shiftsCubit.state ? Labels.activeShifts : Labels.completedShifts, style: Theme.of(context).textTheme.titleLarge,),
    subtitle: const Text(Labels.alternatePrompt),);
  }
}
