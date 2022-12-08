// lib/services/data.dart

part of 'services.dart';

/// Interface for all Cloud FireStore related activity and functionality

abstract class DataInterface {
  /// Add new information to a collection

  Future<String?> add(CollectionReference reference, Object? data) async => '';

  /// Compare a user's credentials to confirm authenticity

  Future<dynamic> login(
    CollectionReference reference, {
    required String email,
    required String password,
    Role? role,
  }) async {}
}

class DataService extends DataInterface {
  @override
  Future<String?> add(CollectionReference reference, Object? data) async {
    try {
      await reference.add(data);
      return null;
    } catch (error, stackTrace) {
      log(
        'Something went wrong adding data to Cloud FireStore\n$error',
        error: error,
        stackTrace: stackTrace,
        level: Level.SEVERE.value,
        time: DateTime.now(),
      );
      return Messages.unspecifiedError;
    }
  }

  @override
  Future<dynamic> login(
    CollectionReference reference, {
    required String email,
    required String password,
    Role? role,
  }) async {
    try {
      final data =
          (await reference.where(JsonKeys.emailAddress, isEqualTo: email).get())
              .docs
              .first
              .data();
      if (data == null) return Messages.noUser;
      switch (role) {
        case null:
        case Role.none:
          return Messages.noUser;
        case Role.admin:
          final user = AdministratorModel.fromJson(
            data as Map<String, Object?>,
          );
          if (!user.password.exists) return Messages.passwordMissing;
          return user;
        case Role.nurse:
          // TODO: Handle this case.
          break;
      }
      return null;
    } catch (error, stackTrace) {
      log(
        'Something went wrong retrieving data to Cloud FireStore\n$error',
        error: error,
        stackTrace: stackTrace,
        level: Level.SEVERE.value,
        time: DateTime.now(),
      );
      return Messages.unspecifiedError;
    }
  }
}
