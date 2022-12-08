// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'administrators.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdministratorModel _$$_AdministratorModelFromJson(
        Map<String, dynamic> json) =>
    _$_AdministratorModel(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_AdministratorModelToJson(
        _$_AdministratorModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'password': instance.password,
    };
