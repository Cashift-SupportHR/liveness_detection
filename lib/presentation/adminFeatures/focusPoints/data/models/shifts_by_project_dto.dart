import 'package:json_annotation/json_annotation.dart'; 

part 'shifts_by_project_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class ShiftsByProjectDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'jobId')
  int? jobId;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'shiftName')
  String? shiftName;

  ShiftsByProjectDto({this.id, this.companyId, this.jobId, this.projectId, this.projectName, this.shiftName});

   factory ShiftsByProjectDto.fromJson(Map<String, dynamic> json) => _$ShiftsByProjectDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ShiftsByProjectDtoToJson(this);
}

