// lib/models/data/administrators/administrators.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nurses_todo_app/keys/keys.dart';

part 'administrators.freezed.dart';
part 'administrators.g.dart';

/// Define the characteristics of an administrator

@freezed
class AdministratorModel with _$AdministratorModel {
  /// Factory Constructor for the ``[AdministratorModel]``
  const factory AdministratorModel({
    @JsonKey(name: JsonKeys.firstName) required String firstName,
    @JsonKey(name: JsonKeys.lastName) required String lastName,
    @JsonKey(name: JsonKeys.emailAddress) required String email,
    @JsonKey(name: JsonKeys.password) required String password,
  }) = _AdministratorModel;

  /// Private constructor for ``[AdministratorModel]``
  /// Allows for implementation of custom instance methods
  const AdministratorModel._();

  /// Converts a Dart ``[Map]`` to an instance of ``[AdministratorModel]``
  factory AdministratorModel.fromJson(Map<String, Object?> json) =>
      _$AdministratorModelFromJson(json);
}
