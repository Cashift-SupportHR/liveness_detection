import 'package:json_annotation/json_annotation.dart'; 

part 'project_info_focus_point_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class ProjectInfoFocusPointDto {
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'date')
  String? date;
  @JsonKey(name: 'shiftName')
  String? shiftName;
  @JsonKey(name: 'startShift')
  String? startShift;
  @JsonKey(name: 'endShift')
  String? endShift;

  ProjectInfoFocusPointDto({this.projectName, this.date, this.shiftName, this.startShift, this.endShift});

   factory ProjectInfoFocusPointDto.fromJson(Map<String, dynamic> json) => _$ProjectInfoFocusPointDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ProjectInfoFocusPointDtoToJson(this);
}

