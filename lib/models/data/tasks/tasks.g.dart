// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      reschedulable: json['reschedulable'] as bool? ?? false,
      id: json['id'] as String?,
      label: json['message'] as String,
      completed: json['completed'] as bool? ?? false,
      shift: Utilities.dateTimeFromTimestamp(json['shift']),
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'reschedulable': instance.reschedulable,
      'id': instance.id,
      'message': instance.label,
      'completed': instance.completed,
      'shift': Utilities.dateTimeToTimestamp(instance.shift),
    };
