import 'package:json_annotation/json_annotation.dart'; 

part 'covenant_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class CovenantDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'priorityNumber')
  int? priorityNumber;
  @JsonKey(name: 'attendanceList')
  List? attendanceList;

  CovenantDto({this.id, this.name, this.projectId, this.priorityNumber, this.attendanceList});

   factory CovenantDto.fromJson(Map<String, dynamic> json) => _$CovenantDtoFromJson(json);

   Map<String, dynamic> toJson() => _$CovenantDtoToJson(this);
}

