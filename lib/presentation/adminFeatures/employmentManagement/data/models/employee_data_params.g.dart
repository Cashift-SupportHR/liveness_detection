// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_data_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeDataParams _$EmployeeDataParamsFromJson(Map<String, dynamic> json) =>
    EmployeeDataParams(
      search: json['search'] as String?,
      type: json['type'] as int?,
      pageNumber: json['pageNumber'] as int?,
      pageSize: json['pageSize'] as int?,
      successApprovedLevel: json['successApprovedLevel'] as int?,
    );

Map<String, dynamic> _$EmployeeDataParamsToJson(EmployeeDataParams instance) =>
    <String, dynamic>{
      'search': instance.search,
      'type': instance.type,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'successApprovedLevel': instance.successApprovedLevel,
    };
