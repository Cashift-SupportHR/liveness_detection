import 'package:json_annotation/json_annotation.dart'; 

part 'focus_point_area_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class FocusPointAreaDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  FocusPointAreaDto({this.id, this.name});

   factory FocusPointAreaDto.fromJson(Map<String, dynamic> json) => _$FocusPointAreaDtoFromJson(json);

   Map<String, dynamic> toJson() => _$FocusPointAreaDtoToJson(this);
}

