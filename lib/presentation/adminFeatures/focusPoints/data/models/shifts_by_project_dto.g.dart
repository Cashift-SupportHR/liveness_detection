// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shifts_by_project_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShiftsByProjectDto _$ShiftsByProjectDtoFromJson(Map<String, dynamic> json) =>
    ShiftsByProjectDto(
      id: json['id'] as int?,
      companyId: json['companyId'] as int?,
      jobId: json['jobId'] as int?,
      projectId: json['projectId'] as int?,
      projectName: json['projectName'] as String?,
      shiftName: json['shiftName'] as String?,
    );

Map<String, dynamic> _$ShiftsByProjectDtoToJson(ShiftsByProjectDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'jobId': instance.jobId,
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'shiftName': instance.shiftName,
    };
