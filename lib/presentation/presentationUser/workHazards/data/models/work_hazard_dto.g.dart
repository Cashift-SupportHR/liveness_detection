// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_hazard_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkHazardDto _$WorkHazardDtoFromJson(Map<String, dynamic> json) =>
    WorkHazardDto(
      id: json['id'] as int?,
      hazardPriorityLevelName: json['hazardPriorityLevelName'] as String?,
      hazardPriorityLevelId: json['hazardPriorityLevelId'] as int?,
      hazardTypeName: json['hazardTypeName'] as String?,
      hazardTypeId: json['hazardTypeId'] as int?,
      hazardStatusName: json['hazardSatusName'] as String?,
      projectId: json['projectId'] as int?,
      projectName: json['projectName'] as String?,
      companyId: json['companyId'] as int?,
      companyName: json['companyName'] as String?,
      shiftId: json['shiftId'] as int?,
      shiftName: json['shiftName'] as String?,
      description: json['description'] as String?,
      submissionDate: json['submissionDate'] as String?,
      hazardDocuments: (json['hazardDocuments'] as List<dynamic>?)
          ?.map((e) => WorkHazardImageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WorkHazardDtoToJson(WorkHazardDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hazardPriorityLevelName': instance.hazardPriorityLevelName,
      'hazardPriorityLevelId': instance.hazardPriorityLevelId,
      'hazardTypeName': instance.hazardTypeName,
      'hazardTypeId': instance.hazardTypeId,
      'hazardSatusName': instance.hazardStatusName,
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'shiftId': instance.shiftId,
      'shiftName': instance.shiftName,
      'description': instance.description,
      'submissionDate': instance.submissionDate,
      'hazardDocuments': instance.hazardDocuments,
    };

WorkHazardImageDto _$WorkHazardImageDtoFromJson(Map<String, dynamic> json) =>
    WorkHazardImageDto(
      path: json['path'] as String?,
    );

Map<String, dynamic> _$WorkHazardImageDtoToJson(WorkHazardImageDto instance) =>
    <String, dynamic>{
      'path': instance.path,
    };
