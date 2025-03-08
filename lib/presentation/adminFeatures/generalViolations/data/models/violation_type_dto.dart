import 'package:json_annotation/json_annotation.dart'; 

part 'violation_type_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ViolationTypeDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'nameEn')
  String? nameEn;
  @JsonKey(name: 'nameAr')
  String? nameAr;
  @JsonKey(name: 'violationAmount')
  num? violationAmount;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'scheduleViolationsTypeId')
  int? scheduleViolationsTypeId;
  @JsonKey(name: 'scheduleViolationsTypeName')
  String? scheduleViolationsTypeName;

  ViolationTypeDto({this.id, this.nameEn, this.nameAr, this.violationAmount, this.projectId, this.projectName, this.companyId, this.companyName, this.scheduleViolationsTypeId, this.scheduleViolationsTypeName});

   factory ViolationTypeDto.fromJson(Map<String, dynamic> json) => _$ViolationTypeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ViolationTypeDtoToJson(this);
}

