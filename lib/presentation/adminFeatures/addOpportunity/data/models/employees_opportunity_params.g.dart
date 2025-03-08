// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_opportunity_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeesOpportunityParams _$EmployeesOpportunityParamsFromJson(
        Map<String, dynamic> json) =>
    EmployeesOpportunityParams(
      approvelLevelId: json['approvelLevelId'] as int?,
      actionType: json['actionType'] as int?,
      oppId: json['oppId'] as int?,
      isAllEmployees: json['iaAllEmployees'] as int?,
      companyId: json['companyId'] as int?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$EmployeesOpportunityParamsToJson(
        EmployeesOpportunityParams instance) =>
    <String, dynamic>{
      'approvelLevelId': instance.approvelLevelId,
      'actionType': instance.actionType,
      'oppId': instance.oppId,
      'companyId': instance.companyId,
      'iaAllEmployees': instance.isAllEmployees,
      'title': instance.title,
    };
