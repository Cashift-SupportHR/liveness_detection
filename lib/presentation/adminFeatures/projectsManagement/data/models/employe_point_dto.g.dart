// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employe_point_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployePointDto _$EmployePointDtoFromJson(Map<String, dynamic> json) =>
    EmployePointDto(
      name: json['name'] as String?,
      job: json['job'] as String?,
      startShiftDateTime: json['startShiftDateTime'] as String?,
      endShiftDateTime: json['endShiftDateTime'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$EmployePointDtoToJson(EmployePointDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'job': instance.job,
      'startShiftDateTime': instance.startShiftDateTime,
      'endShiftDateTime': instance.endShiftDateTime,
      'status': instance.status,
    };
