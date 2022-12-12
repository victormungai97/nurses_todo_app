// lib/views/shifts/shifts.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nurses_todo_app/blocs/blocs.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/cubits/cubits.dart';
import 'package:nurses_todo_app/keys/keys.dart';
import 'package:nurses_todo_app/views/shifts/components/components.dart';
import 'package:nurses_todo_app/widgets/widgets.dart';

part 'body.dart';

/// This page shall render the user interface for nurse shifts

class ShiftsPage extends StatefulWidget {
  /// Constructor for ``[ShiftsPage]``
  const ShiftsPage({super.key});

  @override
  State<ShiftsPage> createState() => _ShiftsPageState();
}

class _ShiftsPageState extends State<ShiftsPage> {
  @override
  void initState() {
    super.initState();

    _load();
  }

  void _load() {
    context.read<ShiftsBloc>().add(
          context.read<ShiftsCubit>().state
              ? const ShiftsEvent.activeRetrieved()
              : const ShiftsEvent.completedRetrieved(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: const _Body(key: WidgetKeys.shiftsBody),
      actions: [
        IconButton(icon: const Icon(Icons.replay), onPressed: _load),
      ],
    );
  }
}
