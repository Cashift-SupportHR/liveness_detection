import 'package:json_annotation/json_annotation.dart'; 

part 'user_area_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class UserAreaDto {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'name')
  String? name;

  UserAreaDto({this.id, this.name});

   factory UserAreaDto.fromJson(Map<String, dynamic> json) => _$UserAreaDtoFromJson(json);

   Map<String, dynamic> toJson() => _$UserAreaDtoToJson(this);
}

