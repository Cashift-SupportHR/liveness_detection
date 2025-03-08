import 'package:json_annotation/json_annotation.dart'; 

part 'shift_focus_point_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class ShiftFocusPointDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'shiftName')
  String? shiftName;

  ShiftFocusPointDto({this.id, this.shiftName});

   factory ShiftFocusPointDto.fromJson(Map<String, dynamic> json) => _$ShiftFocusPointDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ShiftFocusPointDtoToJson(this);
}

