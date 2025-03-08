import 'package:json_annotation/json_annotation.dart'; 

part 'violation_employee_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ViolationEmployeeDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'employeeId')
  int? employeeId;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'shiftName')
  String? shiftName;

  ViolationEmployeeDto({this.id, this.employeeId, this.name, this.phone, this.shiftId, this.shiftName});

   factory ViolationEmployeeDto.fromJson(Map<String, dynamic> json) => _$ViolationEmployeeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ViolationEmployeeDtoToJson(this);
}

