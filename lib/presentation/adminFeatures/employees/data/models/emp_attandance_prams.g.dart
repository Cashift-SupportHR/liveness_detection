// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emp_attandance_prams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmpAttandancePrams _$EmpAttandancePramsFromJson(Map<String, dynamic> json) =>
    EmpAttandancePrams(
      scheduleEmployeeWorkId: json['scheduleEmployeeWorkId'] as int?,
      year: json['year'] as int?,
      month: json['month'] as int?,
      typeRequest: json['typeRequest'] as int?,
    );

Map<String, dynamic> _$EmpAttandancePramsToJson(EmpAttandancePrams instance) =>
    <String, dynamic>{
      'scheduleEmployeeWorkId': instance.scheduleEmployeeWorkId,
      'year': instance.year,
      'month': instance.month,
      'typeRequest': instance.typeRequest,
    };
