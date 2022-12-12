// lib/models/data/shifts/shifts.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurses_todo_app/constants/constants.dart';
import 'package:nurses_todo_app/keys/keys.dart';

part 'shifts.freezed.dart';
part 'shifts.g.dart';

/// Define the specifics of a shift

@freezed
class ShiftsModel with _$ShiftsModel {
  /// Factory Constructor for the ``[ShiftsModel]``
  const factory ShiftsModel({
    @JsonKey(name: JsonKeys.designation)
        required String label,
    @JsonKey(name: JsonKeys.nurses)
        required List<String> workers,
    @JsonKey(
      name: JsonKeys.start,
      fromJson: Utilities.dateTimeFromTimestamp,
      toJson: Utilities.dateTimeToTimestamp,
      nullable: true,
    )
        DateTime? begin,
    @JsonKey(
      name: JsonKeys.end,
      fromJson: Utilities.dateTimeFromTimestamp,
      toJson: Utilities.dateTimeToTimestamp,
      nullable: true,
    )
        DateTime? finish,
  }) = _ShiftsModel;

  /// Private constructor for ``[ShiftsModel]``
  /// Allows for implementation of custom instance methods
  const ShiftsModel._();

  /// Converts a Dart ``[Map]`` to an instance of ``[ShiftsModel]``
  factory ShiftsModel.fromJson(Map<String, Object?> json) =>
      _$ShiftsModelFromJson(json);
}
