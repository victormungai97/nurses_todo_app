// lib/views/tasks/components/entry.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';
import 'package:nurses_todo_app/blocs/blocs.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/controllers/controllers.dart';
import 'package:nurses_todo_app/cubits/cubits.dart';
import 'package:nurses_todo_app/models/models.dart';
import 'package:nurses_todo_app/plugins/plugins.dart';
import 'package:nurses_todo_app/widgets/widgets.dart';

/// Widget to render an individual shift

class TaskEntry extends StatelessWidget {
  /// Constructor for ``[TaskEntry]``
  const TaskEntry({super.key, this.taskModel});

  /// Shift to be displayed
  final TaskModel? taskModel;


  @override
  Widget build(BuildContext context) {
    if (taskModel == null) return const ErrorTextWidget(exception: Messages.taskMissing,);

    final task = taskModel!;
    final now = DateTime.now();
    final shift = task.shift ?? now;
    final passed = shift.add(const Duration(hours: 8)).isBefore(now);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery
          .of(context)
          .size
          .width - 20,
      height: passed || task.completed ? null : 165,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(task.label),
            subtitle: Text('Shift: ${DateFormat("MMMM d, yyyy 'at' h:m:ss a").format(shift)}',),
            trailing: passed || task.completed ? const Icon(Icons.done, color: Colors.green,) : null,
          ),
          if (!passed && !task.completed)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(child: ArgonButton(borderRadius: 12,
                  color: Colors.green, height: 50,
                  width: 350,loader: Container(
                    padding: const EdgeInsets.all(10),
                    child: const SpinKitRotatingCircle(
                      color: Colors.white,
                      // size: loaderWidth ,
                    ),
                  ),
                  onTap: (startLoading, stopLoading, btnState) async {
                    if (btnState == ButtonState.Idle) {
                      startLoading();
                    await context.read<TasksController>().updateTask(task.copyWith(completed: true)).then((_) => context.read<TasksBloc>().add(TasksEvent.shiftTasksRetrieved(shift: context.read<TasksCubit>().state),),);
                      stopLoading();
                    }
                  }, icon: const Icon(Icons.done),child: const Text(
                Labels.done,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                ),),),),
                if (task.reschedulable) ...[
                const SizedBox(width: 25),
                Expanded(child: ArgonButton(borderRadius: 12,
                  color: Colors.pink, height: 50,
                  width: 350,loader: Container(
                    padding: const EdgeInsets.all(10),
                    child: const SpinKitHourGlass(
                      color: Colors.white,
                      size: 25 ,
                    ),
                  ),
                  onTap: (startLoading, stopLoading, btnState) async {
                    if (btnState == ButtonState.Idle) {
                      startLoading();
                      await context.read<TasksController>().getAllTasks().then((value) async {
                        if (value is String) {
                          _showErrorSnackBar(context, value);
                        } else if (value is List<TaskModel>?) {
                          final tasks = value ?? [];
                          await context.read<TasksController>()
                              .updateTask(task.copyWith(
                              shift: tasks.last.shift ?? DateTime.now(),),)
                              .then((_) => context.read<TasksBloc>().add(
                            TasksEvent.shiftTasksRetrieved(shift: context
                                .read<TasksCubit>()
                                .state,),),);
                        } else {
                          _showErrorSnackBar(context, Messages.weirdResponse);
                        }
                      },);
                      stopLoading();
                    }
                  }, icon: const Icon(Icons.fast_forward),child: const Text(
                    Labels.reassign,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),),),),],
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showErrorSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
