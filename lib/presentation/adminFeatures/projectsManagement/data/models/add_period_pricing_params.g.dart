// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_period_pricing_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddPeriodPricingParams _$AddPeriodPricingParamsFromJson(
        Map<String, dynamic> json) =>
    AddPeriodPricingParams(
      id: json['id'] as int?,
      companyId: json['companyId'] as int?,
      seasonseId: json['seasonseId'] as int?,
      projectId: json['projectId'] as int?,
      shiftId: json['shiftId'] as int?,
      fromDay: json['fromDay'] as int?,
      toDay: json['toDay'] as int?,
      salary: json['salary'] as int?,
      setAsDefault: json['setAsDefault'] as bool?,
      isAllowEditPrice: json['isAllowEditPrice'] as bool?,
      jobId: json['jobId'] as int?,
    );

Map<String, dynamic> _$AddPeriodPricingParamsToJson(
        AddPeriodPricingParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'seasonseId': instance.seasonseId,
      'projectId': instance.projectId,
      'shiftId': instance.shiftId,
      'fromDay': instance.fromDay,
      'toDay': instance.toDay,
      'salary': instance.salary,
      'setAsDefault': instance.setAsDefault,
      'isAllowEditPrice': instance.isAllowEditPrice,
      'jobId': instance.jobId,
    };
