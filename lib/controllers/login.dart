// lib/controllers/login.dart

part of 'controllers.dart';

/// Carry out login capability

class LoginController {
  /// Constructor for ``[LoginController]``
  const LoginController({required this.dataService, required this.encryptionService,});

  /// Sign user in
  Future<dynamic> signUserIn({required String email, required String password, Role? role,}) async {
    try {
      if (!email.exists) return Messages.emailMissing;
      final emailRegExp =
      RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
      if (!emailRegExp.hasMatch(email)) return Messages.invalidEmail;
      var collection = '';
      if (role == Role.nurse) collection = CollectionIDs.nurses;
      if (role == Role.admin) collection = CollectionIDs.administrators;
      final result = await dataService.login(
          FirebaseFirestore.instance.collection(collection),
        email: email, password: password, role: role,
      );
      if (result == null) return Messages.emptyResponse;
      if (result is String) return result;
      if (result is NurseModel) {
        final user = result;
        final plaintext = await encryptionService.rsaDecryption(user.password);
        if (password != plaintext) return Messages.mismatchedPassword;
      }
      if (result is AdministratorModel) {
        final user = result;
        final plaintext = await encryptionService.rsaDecryption(user.password);
        if (password != plaintext) return Messages.mismatchedPassword;
      }
      return result;
    } catch (error, stackTrace) {
      log(
        'Something went wrong signing user in\n$error',
        error: error,
        stackTrace: stackTrace,
        level: Level.SEVERE.value,
        time: DateTime.now(),
      );
      return Messages.unspecifiedError;
    }
  }

  /// Service for using Cloud Firestore
  final DataService dataService;

  /// Service for encryption
  final EncryptionService encryptionService;
}