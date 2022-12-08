// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nurses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NurseModel _$$_NurseModelFromJson(Map<String, dynamic> json) =>
    _$_NurseModel(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      employmentID: json['employment_id'] as String,
    );

Map<String, dynamic> _$$_NurseModelToJson(_$_NurseModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'employment_id': instance.employmentID,
    };
