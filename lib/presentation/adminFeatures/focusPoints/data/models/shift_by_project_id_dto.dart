import 'package:json_annotation/json_annotation.dart'; 

part 'shift_by_project_id_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class ShiftByProjectIdDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'shiftName')
  String? shiftName;
  @JsonKey(name: 'isActive')
  bool? isActive;

  ShiftByProjectIdDto({this.id, this.shiftName, this.isActive});

   factory ShiftByProjectIdDto.fromJson(Map<String, dynamic> json) => _$ShiftByProjectIdDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ShiftByProjectIdDtoToJson(this);
}

