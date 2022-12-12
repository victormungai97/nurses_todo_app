// lib/views/tasks/body.dart

part of 'tasks.dart';

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<TasksBloc>();

    return bloc.state.when(
      initial: () {
        return Center(
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.replay, size: 52),
                SizedBox(height: 12.5),
                Text(
                  Labels.tasksPrompt,
                  style: TextStyle(fontSize: 32),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 12.5),
              ],
            ),
            onTap: () => bloc.add(
              TasksEvent.shiftTasksRetrieved(
                shift: context.read<TasksCubit>().state,
              ),
            ),
          ),
        );
      },
      load: () => const Center(child: CircularProgressIndicator()),
      tasksSuccess: (tasks) => _TasksView(
        key: WidgetKeys.allTasksView,
        tasks: tasks,
      ),
      shiftTaskSuccess: (tasks) => _TasksView(
        key: WidgetKeys.shiftTasksView,
        tasks: tasks,
      ),
      failure: (exception) => _Error(exception: exception),
    );
  }
}

class _TasksView extends StatelessWidget {
  const _TasksView({super.key, this.tasks});

  /// Tasks received
  final List<TaskModel?>? tasks;

  @override
  Widget build(BuildContext context) {
    if (tasks == null || (tasks?.isEmpty ?? false)) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ErrorTextWidget(exception: Messages.noTasks),
            const SizedBox(height: 25),
            GestureDetector(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.replay_sharp, color: Colors.black),
                    SizedBox(width: 12.5),
                    Text(Labels.tasksPrompt, style: TextStyle(fontSize: 24)),
                  ],
                ),
              ),
              onTap: () => context.read<TasksBloc>().add(
                    TasksEvent.shiftTasksRetrieved(
                        shift: context.read<TasksCubit>().state),
                  ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
    }
    final duties = tasks ?? [];
    return ListView.separated(
      separatorBuilder: (_, i) => const SizedBox(height: 25),
      itemBuilder: (_, i) => i == 0
          ? Center(
              child: Text(
                Labels.tasks,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            )
          : TaskEntry(taskModel: duties[i - 1]),
      itemCount: duties.length + 1,
      padding: const EdgeInsets.symmetric(vertical: 15),
    );
  }
}

class _Error extends StatelessWidget {
  const _Error({super.key, required this.exception});

  /// Error Message
  final String exception;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ErrorTextWidget(exception: exception),
          const SizedBox(height: 25),
          GestureDetector(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.replay_sharp, color: Colors.black),
                  SizedBox(width: 12.5),
                  Text(
                    Labels.tasksPrompt,
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
            onTap: () => context.read<TasksBloc>().add(
                  TasksEvent.shiftTasksRetrieved(
                      shift: context.read<TasksCubit>().state),
                ),
          ),
        ],
      ),
    );
  }
}
