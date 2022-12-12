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

  /// Obtain data from Firestore
  Future<List<QueryDocumentSnapshot>?> retrieve(
          CollectionReference reference,) async =>
      null;

  /// Update a document in Firestore
  Future<void> update(
    CollectionReference reference,
    String? id,
    Map<String, dynamic> data,
  ) async {}
}

/// Concrete implementation of Database functionality
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
      final data = await reference
          .where(JsonKeys.emailAddress, isEqualTo: email)
          .get()
          .then(
        (QuerySnapshot value) {
          if (value.docs.isEmpty) return null;
          return value.docs.first.data();
        },
      );
      if (data == null) return Messages.noUser;
      switch (role) {
        case null:
        case Role.none:
          return Messages.noUser;
        case Role.admin:
          final admin = AdministratorModel.fromJson(
            data as Map<String, Object?>,
          );
          if (!admin.password.exists) return Messages.passwordMissing;
          return admin;
        case Role.nurse:
          final nurse = NurseModel.fromJson(
            data as Map<String, Object?>,
          );
          if (!nurse.password.exists) return Messages.passwordMissing;
          return nurse;
      }
    } catch (error, stackTrace) {
      log(
        'Something went wrong logging in to Cloud FireStore\n$error',
        error: error,
        stackTrace: stackTrace,
        level: Level.SEVERE.value,
        time: DateTime.now(),
      );
      return Messages.unspecifiedError;
    }
  }

  @override
  Future<List<QueryDocumentSnapshot>?> retrieve(CollectionReference reference) {
    try {
      return reference.get().then((value) {
        if (value.docs.isEmpty) return null;
        return value.docs.toList();
      });
    } catch (error, stackTrace) {
      log(
        'Something went wrong retrieving data to Cloud FireStore\n$error',
        error: error,
        stackTrace: stackTrace,
        level: Level.SEVERE.value,
        time: DateTime.now(),
      );
      return Future.value([]);
    }
  }

  @override
  Future<void> update(
    CollectionReference reference,
    String? id,
    Map<String, dynamic> data,
  ) async {
    await reference.doc(id).update(data);
  }
}
