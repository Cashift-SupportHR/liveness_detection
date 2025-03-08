// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_opp_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeOppParams _$EmployeeOppParamsFromJson(Map<String, dynamic> json) =>
    EmployeeOppParams(
      approvelLevelId: json['approvelLevelId'] as int?,
      actionType: json['actionType'] as int?,
      oppId: json['oppId'] as int?,
      companyId: json['companyId'] as int?,
    );

Map<String, dynamic> _$EmployeeOppParamsToJson(EmployeeOppParams instance) =>
    <String, dynamic>{
      'approvelLevelId': instance.approvelLevelId,
      'actionType': instance.actionType,
      'oppId': instance.oppId,
      'companyId': instance.companyId,
    };
