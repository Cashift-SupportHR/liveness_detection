// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_general_violation_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddGeneralViolationParams _$AddGeneralViolationParamsFromJson(
        Map<String, dynamic> json) =>
    AddGeneralViolationParams(
      id: json['id'] as int?,
      projectId: json['projectId'] as int?,
      companyId: json['companyId'] as int?,
      shiftId: json['shiftId'] as int?,
      scheduleViolationId: json['scheduleViolationId'] as int?,
      scheduleEmployeeWorkId: json['scheduleEmployeeWorkId'] as int?,
    );

Map<String, dynamic> _$AddGeneralViolationParamsToJson(
        AddGeneralViolationParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'companyId': instance.companyId,
      'shiftId': instance.shiftId,
      'scheduleViolationId': instance.scheduleViolationId,
      'scheduleEmployeeWorkId': instance.scheduleEmployeeWorkId,
    };
