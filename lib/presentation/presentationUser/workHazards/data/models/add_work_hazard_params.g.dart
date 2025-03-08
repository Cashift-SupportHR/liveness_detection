// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_work_hazard_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddWorkHazardParams _$AddWorkHazardParamsFromJson(Map<String, dynamic> json) =>
    AddWorkHazardParams(
      id: json['id'] as int?,
      hazardPriorityLevelId: json['hazardPriorityLevelId'] as int?,
      hazardTypeId: json['hazardTypeId'] as int?,
      hazardSatusId: json['hazardSatusId'] as int?,
      hazardStatusName: json['hazardStatusName'] as String?,
      projectId: json['projectId'] as int?,
      companyId: json['companyId'] as int?,
      shiftId: json['shiftId'] as int?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$AddWorkHazardParamsToJson(
        AddWorkHazardParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hazardPriorityLevelId': instance.hazardPriorityLevelId,
      'hazardTypeId': instance.hazardTypeId,
      'hazardSatusId': instance.hazardSatusId,
      'hazardStatusName': instance.hazardStatusName,
      'projectId': instance.projectId,
      'companyId': instance.companyId,
      'shiftId': instance.shiftId,
      'description': instance.description,
    };
