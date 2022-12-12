// lib/views/tasks/tasks.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nurses_todo_app/blocs/blocs.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/cubits/cubits.dart';
import 'package:nurses_todo_app/keys/keys.dart';
import 'package:nurses_todo_app/models/models.dart';
import 'package:nurses_todo_app/views/tasks/components/components.dart';
import 'package:nurses_todo_app/widgets/widgets.dart';

part 'body.dart';

/// This page shall render the user interface for tasks per shift

class TasksPage extends StatefulWidget {
  /// Constructor for ``[TasksPage]``
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  void _load() {
    context.read<TasksBloc>().add(
          TasksEvent.shiftTasksRetrieved(
            shift: context.read<TasksCubit>().state,
          ),
        );
  }

  @override
  void initState() {
    super.initState();

    _load();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: CustomScaffold(
        body: const _Body(key: WidgetKeys.tasksBody),
        actions: [
          IconButton(icon: const Icon(Icons.replay), onPressed: _load),
        ],
      ),
      onWillPop: () async {
        debugPrint('-- onWillPop -- called');
        context.read<TasksBloc>().add(const TasksEvent.initial());
        return true;
      },
    );
  }
}
