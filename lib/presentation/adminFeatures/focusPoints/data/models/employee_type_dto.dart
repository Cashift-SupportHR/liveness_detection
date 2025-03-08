import 'package:json_annotation/json_annotation.dart'; 

part 'employee_type_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class EmployeeTypeDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  EmployeeTypeDto({this.id, this.name});

   factory EmployeeTypeDto.fromJson(Map<String, dynamic> json) => _$EmployeeTypeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$EmployeeTypeDtoToJson(this);
}

