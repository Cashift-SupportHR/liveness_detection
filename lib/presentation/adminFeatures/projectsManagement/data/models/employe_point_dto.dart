import 'package:json_annotation/json_annotation.dart'; 

part 'employe_point_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class EmployePointDto {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'job')
  String? job;
  @JsonKey(name: 'startShiftDateTime')
  String? startShiftDateTime;
  @JsonKey(name: 'endShiftDateTime')
  String? endShiftDateTime;
  @JsonKey(name: 'status')
  String? status;

  EmployePointDto({this.name, this.job, this.startShiftDateTime, this.endShiftDateTime, this.status});

   factory EmployePointDto.fromJson(Map<String, dynamic> json) => _$EmployePointDtoFromJson(json);

   Map<String, dynamic> toJson() => _$EmployePointDtoToJson(this);
}

