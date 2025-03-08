import 'package:json_annotation/json_annotation.dart'; 

part 'employee_opportunity_type_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class EmployeeOpportunityTypeDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'code')
  String? code;
  @JsonKey(name: 'icon')
  String? icon;

  EmployeeOpportunityTypeDto({this.id, this.name, this.description, this.code, this.icon});

   factory EmployeeOpportunityTypeDto.fromJson(Map<String, dynamic> json) => _$EmployeeOpportunityTypeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$EmployeeOpportunityTypeDtoToJson(this);
}

