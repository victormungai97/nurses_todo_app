// lib/controllers/tasks.dart

part of 'controllers.dart';

/// Handle shift operations

class TasksController {
  /// Constructor for ``[TasksController]``
  const TasksController({required this.dataService});

  static CollectionReference get _reference =>
      FirebaseFirestore.instance.collection(CollectionIDs.tasks);

  /// Create a new task
  Future<String?> addTask({String? message, String? shift}) async {
    try {
      if (!message.exists) return 'Message for task is required';
      if (!shift.exists) return 'Start for task shift is required';
      return await dataService.add(
        _reference,
        TaskModel(
          label: message!,
          shift: DateFormat("MMMM d, yyyy 'at' h:m:ss a").parse(shift!),
        ).toJson()
          ..removeWhere(
            (key, value) => {JsonKeys.id, 'reschedulable'}.contains(key),
          ),
      );
    } catch (error, stackTrace) {
      log(
        'Something went wrong creating a new task\n$error',
        error: error,
        stackTrace: stackTrace,
        level: Level.SEVERE.value,
        time: DateTime.now(),
      );
      return Messages.unspecifiedError;
    }
  }

  /// Obtain all tasks
  Future<dynamic> getAllTasks() async {
    try {
      return await dataService.retrieve(_reference).then((value) {
        final tasks = value
                ?.map(
                  (e) => TaskModel.fromJson(e.data() as Map<String, Object?>)
                      .copyWith(id: e.reference.id),
                )
                .toList() ??
            [];
        final now = DateTime.now();
        tasks.sort((a, b) => (a.shift ?? now).compareTo(b.shift ?? now));
        final lastShift = tasks.last.shift;
        return tasks
            .map((e) => e.copyWith(reschedulable: e.shift != lastShift))
            .toList();
      });
    } catch (error, stackTrace) {
      log(
        'Something went wrong obtaining tasks\n$error',
        error: error,
        stackTrace: stackTrace,
        level: Level.SEVERE.value,
        time: DateTime.now(),
      );
      return Messages.unspecifiedError;
    }
  }

  /// Retrieve tasks belonging to a ``[shift]``
  Future<dynamic> getShiftTasks(DateTime shift) async {
    try {
      final result = await getAllTasks();
      if (result is String) return result;
      if (result == null) return Messages.noTasks;
      if (result is! List<TaskModel>?) return Messages.weirdResponse;
      final tasks = result ?? [];
      if (tasks.isEmpty) return Messages.noTasks;
      return tasks.where((element) {
        final e = element.shift ?? DateTime.now();
        final id = DateTime(e.year, e.month, e.day, e.hour, e.minute, e.second);
        final time = DateTime(
          shift.year,
          shift.month,
          shift.day,
          shift.hour,
          shift.minute,
          shift.second,
        );
        return id.isAtSameMomentAs(time);
      }).toList();
    } catch (error, stackTrace) {
      log(
        'Something went wrong obtaining tasks for shifts\n$error',
        error: error,
        stackTrace: stackTrace,
        level: Level.SEVERE.value,
        time: DateTime.now(),
      );
      return Messages.unspecifiedError;
    }
  }

  /// Update a task document in Firestore
  Future<void> updateTask(TaskModel taskModel) async {
    try {
      final json = taskModel.toJson();
      if (json.containsKey('reschedulable')) json.remove('reschedulable');
      await dataService.update(_reference, taskModel.id, json);
    } catch (error, stackTrace) {
      log(
        'Something went wrong updating a task\n$error',
        error: error,
        stackTrace: stackTrace,
        level: Level.SEVERE.value,
        time: DateTime.now(),
      );
    }
  }

  /// Service for using Cloud Firestore
  final DataInterface dataService;
}
