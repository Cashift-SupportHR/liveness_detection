import 'package:json_annotation/json_annotation.dart'; 

part 'ban_employee_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class BanEmployeeDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'freelanceLogo')
  String? freelanceLogo;
  @JsonKey(name: 'freelanceNotes')
  String? freelanceNotes;
  @JsonKey(name: 'freelanceId')
  int? freelanceId;
  @JsonKey(name: 'freelanceName')
  String? freelanceName;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'evaluationPerCompany')
  int? evaluationPerCompany;
  @JsonKey(name: 'totalEvaluationPerCompany')
  int? totalEvaluationPerCompany;
  @JsonKey(name: 'evaluationPerProject')
  int? evaluationPerProject;
  @JsonKey(name: 'totalEvaluationPerProject')
  int? totalEvaluationPerProject;

  BanEmployeeDto({this.id, this.freelanceId, this.freelanceName, this.projectId, this.companyId, this.projectName, this.description, this.evaluationPerCompany, this.totalEvaluationPerCompany, this.evaluationPerProject, this.totalEvaluationPerProject});

   factory BanEmployeeDto.fromJson(Map<String, dynamic> json) => _$BanEmployeeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$BanEmployeeDtoToJson(this);
}

