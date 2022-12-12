// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shifts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShiftsModel _$$_ShiftsModelFromJson(Map<String, dynamic> json) =>
    _$_ShiftsModel(
      label: json['designation'] as String,
      workers:
          (json['nurses'] as List<dynamic>).map((e) => e as String).toList(),
      begin: Utilities.dateTimeFromTimestamp(json['start']),
      finish: Utilities.dateTimeFromTimestamp(json['end']),
    );

Map<String, dynamic> _$$_ShiftsModelToJson(_$_ShiftsModel instance) =>
    <String, dynamic>{
      'designation': instance.label,
      'nurses': instance.workers,
      'start': Utilities.dateTimeToTimestamp(instance.begin),
      'end': Utilities.dateTimeToTimestamp(instance.finish),
    };
