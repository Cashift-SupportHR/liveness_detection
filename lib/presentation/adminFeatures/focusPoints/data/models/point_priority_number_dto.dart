import 'package:json_annotation/json_annotation.dart'; 

part 'point_priority_number_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class PointPriorityNumberDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  PointPriorityNumberDto({this.id, this.name});

   factory PointPriorityNumberDto.fromJson(Map<String, dynamic> json) => _$PointPriorityNumberDtoFromJson(json);

   Map<String, dynamic> toJson() => _$PointPriorityNumberDtoToJson(this);
}

