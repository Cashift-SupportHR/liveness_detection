import 'package:json_annotation/json_annotation.dart'; 

part 'focus_point_type_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class FocusPointTypeDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  FocusPointTypeDto({this.id, this.name});

   factory FocusPointTypeDto.fromJson(Map<String, dynamic> json) => _$FocusPointTypeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$FocusPointTypeDtoToJson(this);
}

