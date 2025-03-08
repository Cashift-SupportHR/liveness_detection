import 'package:json_annotation/json_annotation.dart'; 

part 'punishment_name_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class PunishmentNameDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  PunishmentNameDto({this.id, this.name});

   factory PunishmentNameDto.fromJson(Map<String, dynamic> json) => _$PunishmentNameDtoFromJson(json);

   Map<String, dynamic> toJson() => _$PunishmentNameDtoToJson(this);
}

