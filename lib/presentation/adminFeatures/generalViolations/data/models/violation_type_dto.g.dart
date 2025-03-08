// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'violation_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ViolationTypeDto _$ViolationTypeDtoFromJson(Map<String, dynamic> json) =>
    ViolationTypeDto(
      id: json['id'] as int?,
      nameEn: json['nameEn'] as String?,
      nameAr: json['nameAr'] as String?,
      violationAmount: json['violationAmount'] as num?,
      projectId: json['projectId'] as int?,
      projectName: json['projectName'] as String?,
      companyId: json['companyId'] as int?,
      companyName: json['companyName'] as String?,
      scheduleViolationsTypeId: json['scheduleViolationsTypeId'] as int?,
      scheduleViolationsTypeName: json['scheduleViolationsTypeName'] as String?,
    );

Map<String, dynamic> _$ViolationTypeDtoToJson(ViolationTypeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameEn': instance.nameEn,
      'nameAr': instance.nameAr,
      'violationAmount': instance.violationAmount,
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'scheduleViolationsTypeId': instance.scheduleViolationsTypeId,
      'scheduleViolationsTypeName': instance.scheduleViolationsTypeName,
    };
