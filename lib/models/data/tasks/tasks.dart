// lib/models/data/tasks/tasks.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/keys/keys.dart';

part 'tasks.freezed.dart';
part 'tasks.g.dart';

/// Define a task

@freezed
class TaskModel with _$TaskModel {
  /// Constructor for ``[TaskModel]``
  const factory TaskModel({
    @Default(false) bool reschedulable,
    @JsonKey(name: JsonKeys.id, nullable: true) String? id,
    @JsonKey(name: JsonKeys.message) required String label,
    @JsonKey(name: JsonKeys.completed, defaultValue: false) @Default(false) bool completed,
    @JsonKey(name: JsonKeys.shift, fromJson: Utilities.dateTimeFromTimestamp, toJson: Utilities.dateTimeToTimestamp, nullable: true,) DateTime? shift,
}) = _TaskModel;


  /// Private constructor for ``[TaskModel]``
  /// Allows for implementation of custom instance methods
  const TaskModel._();

  /// Converts a Dart ``[Map]`` to an instance of ``[TaskModel]``
  factory TaskModel.fromJson(Map<String, Object?> json) =>
      _$TaskModelFromJson(json);

}
