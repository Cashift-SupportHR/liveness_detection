// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ban_employee_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BanEmployeeDto _$BanEmployeeDtoFromJson(Map<String, dynamic> json) =>
    BanEmployeeDto(
      id: json['id'] as int?,
      freelanceId: json['freelanceId'] as int?,
      freelanceName: json['freelanceName'] as String?,
      projectId: json['projectId'] as int?,
      companyId: json['companyId'] as int?,
      projectName: json['projectName'] as String?,
      description: json['description'] as String?,
      evaluationPerCompany: json['evaluationPerCompany'] as int?,
      totalEvaluationPerCompany: json['totalEvaluationPerCompany'] as int?,
      evaluationPerProject: json['evaluationPerProject'] as int?,
      totalEvaluationPerProject: json['totalEvaluationPerProject'] as int?,
    )
      ..freelanceLogo = json['freelanceLogo'] as String?
      ..freelanceNotes = json['freelanceNotes'] as String?;

Map<String, dynamic> _$BanEmployeeDtoToJson(BanEmployeeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'freelanceLogo': instance.freelanceLogo,
      'freelanceNotes': instance.freelanceNotes,
      'freelanceId': instance.freelanceId,
      'freelanceName': instance.freelanceName,
      'projectId': instance.projectId,
      'companyId': instance.companyId,
      'projectName': instance.projectName,
      'description': instance.description,
      'evaluationPerCompany': instance.evaluationPerCompany,
      'totalEvaluationPerCompany': instance.totalEvaluationPerCompany,
      'evaluationPerProject': instance.evaluationPerProject,
      'totalEvaluationPerProject': instance.totalEvaluationPerProject,
    };
