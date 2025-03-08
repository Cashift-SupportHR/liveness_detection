// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_opportunities_available_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchOpportunitiesAvailableParams _$SearchOpportunitiesAvailableParamsFromJson(
        Map<String, dynamic> json) =>
    SearchOpportunitiesAvailableParams(
      cityId: json['cityId'] as int?,
      projectId: json['projectId'] as int?,
      jobId: json['jobId'] as int?,
      companyId: json['companyId'] as int?,
      fromDate: json['fromDate'] as String?,
      fromSalary: json['fromSalary'] as int?,
      toSalary: json['toSalary'] as int?,
      toDate: json['toDate'] as String?,
    );

Map<String, dynamic> _$SearchOpportunitiesAvailableParamsToJson(
        SearchOpportunitiesAvailableParams instance) =>
    <String, dynamic>{
      'cityId': instance.cityId,
      'projectId': instance.projectId,
      'jobId': instance.jobId,
      'companyId': instance.companyId,
      'fromDate': instance.fromDate,
      'toDate': instance.toDate,
      'fromSalary': instance.fromSalary,
      'toSalary': instance.toSalary,
    };
