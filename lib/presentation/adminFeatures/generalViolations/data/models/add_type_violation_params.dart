import 'package:json_annotation/json_annotation.dart'; 

part 'add_type_violation_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class AddTypeViolationParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'nameEn')
  String? nameEn;
  @JsonKey(name: 'nameAr')
  String? nameAr;
  @JsonKey(name: 'violationAmount')
  double? violationAmount;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'scheduleViolationsTypeId')
  int? scheduleViolationsTypeId;

  AddTypeViolationParams({this.id, this.nameEn, this.nameAr, this.violationAmount, this.projectId, this.companyId, this.scheduleViolationsTypeId});

   factory AddTypeViolationParams.fromJson(Map<String, dynamic> json) => _$AddTypeViolationParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddTypeViolationParamsToJson(this);
}

