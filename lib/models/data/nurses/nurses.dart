// lib/models/data/nurses/nurses.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurses_todo_app/keys/keys.dart';

part 'nurses.freezed.dart';
part 'nurses.g.dart';

/// Define the details of a nurse

@freezed
class NurseModel with _$NurseModel {
  /// Factory Constructor for the ``[NurseModel]``
  const factory NurseModel({
    @JsonKey(name: JsonKeys.firstName) required String firstName,
    @JsonKey(name: JsonKeys.lastName) required String lastName,
    @JsonKey(name: JsonKeys.emailAddress) required String email,
    @JsonKey(name: JsonKeys.password) required String password,
    @JsonKey(name: JsonKeys.employmentID) required String employmentID,
  }) = _NurseModel;

  /// Private constructor for ``[NurseModel]``
  /// Allows for implementation of custom instance methods
  const NurseModel._();

  /// Converts a Dart ``[Map]`` to an instance of ``[NurseModel]``
  factory NurseModel.fromJson(Map<String, Object?> json)
  => _$NurseModelFromJson(json);
}