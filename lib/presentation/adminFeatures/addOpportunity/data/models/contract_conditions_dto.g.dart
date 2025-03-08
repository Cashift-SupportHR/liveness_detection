// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_conditions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContractConditionsDto _$ContractConditionsDtoFromJson(
        Map<String, dynamic> json) =>
    ContractConditionsDto(
      id: json['id'] as int?,
      conditionNumber: json['conditionNumber'] as String?,
      maxHours: json['maxHours'] as int?,
      isAddLastHours: json['isAddLastHours'] as bool?,
      lastHours: json['lastHours'] as int?,
      isAllowEditTime: json['isAllowEditTime'] as bool?,
      startAllowMinutes: json['startAllowMinutes'] as int?,
      endAllowMinutes: json['endAllowMinutes'] as int?,
      companyId: json['companyId'] as int?,
      projectId: json['projectId'] as int?,
      jobId: json['jobId'] as int?,
      allowEditDateOpp: json['allowEditDateOpp'] as bool?,
    );

Map<String, dynamic> _$ContractConditionsDtoToJson(
        ContractConditionsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'conditionNumber': instance.conditionNumber,
      'maxHours': instance.maxHours,
      'isAddLastHours': instance.isAddLastHours,
      'lastHours': instance.lastHours,
      'isAllowEditTime': instance.isAllowEditTime,
      'startAllowMinutes': instance.startAllowMinutes,
      'endAllowMinutes': instance.endAllowMinutes,
      'companyId': instance.companyId,
      'projectId': instance.projectId,
      'jobId': instance.jobId,
      'allowEditDateOpp': instance.allowEditDateOpp,
    };
