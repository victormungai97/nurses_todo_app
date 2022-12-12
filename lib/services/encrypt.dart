// lib/services/encrypt.dart

part of 'services.dart';

/// Interface for all encryption functionality
/// Exists to allow mocking in tests

abstract class EncryptionInterface {
  /// Receives plain text and encodes it based on the ``[RSA]`` algorithm
  Future<String> rsaEncryption(String plainText) async => '';

  /// Receives encoded text and decoded it based on the ``[RSA]`` algorithm
  Future<String> rsaDecryption(String encoded) async => '';
}

/// Facilitates encryption and decryption of data

class EncryptionService extends EncryptionInterface {
  Future<T> _parseKeyFromFile<T extends RSAAsymmetricKey>(
    String filename,
  ) async {
    final key = await rootBundle.loadString('keys/$filename');
    final parser = RSAKeyParser();
    return parser.parse(key) as T;
  }

  Future<Encrypter> _rsaEncrypter() async {
    final publicKey = await _parseKeyFromFile<RSAPublicKey>('public_key.pem');
    final privateKey =
        await _parseKeyFromFile<RSAPrivateKey>('private_key.pem');
    return Encrypter(RSA(publicKey: publicKey, privateKey: privateKey));
  }

  @override
  Future<String> rsaEncryption(String plainText) async {
    if (!plainText.exists) return '';
    final encrypter = await _rsaEncrypter();
    final encrypted = encrypter.encrypt(plainText);
    return encrypted.base64;
  }

  @override
  Future<String> rsaDecryption(String encoded) async {
    if (!encoded.exists) return '';
    final encrypter = await _rsaEncrypter();
    final decrypted = encrypter.decrypt64(encoded);
    return decrypted;
  }
}
