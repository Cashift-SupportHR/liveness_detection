// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_opportunity_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationOpportunityParams _$PaginationOpportunityParamsFromJson(
        Map<String, dynamic> json) =>
    PaginationOpportunityParams(
      projectId: json['projectId'] as int?,
      page: json['page'] as int?,
      jobId: json['jobId'] as int?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      pageSize: json['pageSize'] as int?,
      type: json['type'] as int?,
    );

Map<String, dynamic> _$PaginationOpportunityParamsToJson(
        PaginationOpportunityParams instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'type': instance.type,
      'projectId': instance.projectId,
      'jobId': instance.jobId,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };
