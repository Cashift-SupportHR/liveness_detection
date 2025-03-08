import 'package:json_annotation/json_annotation.dart'; 

part 'shift_by_list_project_id_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class ShiftByListProjectIdDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  ShiftByListProjectIdDto({this.id, this.name});

   factory ShiftByListProjectIdDto.fromJson(Map<String, dynamic> json) => _$ShiftByListProjectIdDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ShiftByListProjectIdDtoToJson(this);
}

