import 'package:json_annotation/json_annotation.dart'; 

part 'punishment_type_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class PunishmentTypeDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  PunishmentTypeDto({this.id, this.name});

   factory PunishmentTypeDto.fromJson(Map<String, dynamic> json) => _$PunishmentTypeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$PunishmentTypeDtoToJson(this);
}

