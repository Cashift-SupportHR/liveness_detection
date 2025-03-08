// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_time_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShiftTimeDto _$ShiftTimeDtoFromJson(Map<String, dynamic> json) => ShiftTimeDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      jobId: json['jobId'] as int?,
    );

Map<String, dynamic> _$ShiftTimeDtoToJson(ShiftTimeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jobId': instance.jobId,
      'name': instance.name,
    };
