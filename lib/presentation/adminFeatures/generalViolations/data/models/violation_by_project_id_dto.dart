import 'package:json_annotation/json_annotation.dart'; 

part 'violation_by_project_id_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class ViolationByProjectIdDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'violationAmount')
  num? violationAmount;
  @JsonKey(name: 'scheduleViolationsTypeId')
  int? scheduleViolationsTypeId;
  @JsonKey(name: 'scheduleViolationsTypeName')
  String? scheduleViolationsTypeName;
  @JsonKey(name: 'scheduleViolationsTypeCode')
  String? scheduleViolationsTypeCode;

  ViolationByProjectIdDto({this.id, this.name, this.violationAmount, this.scheduleViolationsTypeId, this.scheduleViolationsTypeName, this.scheduleViolationsTypeCode});

   factory ViolationByProjectIdDto.fromJson(Map<String, dynamic> json) => _$ViolationByProjectIdDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ViolationByProjectIdDtoToJson(this);
}

