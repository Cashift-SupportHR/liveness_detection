// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_evaluations_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobEvaluationsDto _$JobEvaluationsDtoFromJson(Map<String, dynamic> json) =>
    JobEvaluationsDto(
      id: json['id'] as int?,
      title: json['title'] as String?,
      value: json['value'] as int?,
    );

Map<String, dynamic> _$JobEvaluationsDtoToJson(JobEvaluationsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'value': instance.value,
    };
