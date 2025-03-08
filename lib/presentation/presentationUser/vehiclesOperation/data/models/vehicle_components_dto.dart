import 'package:json_annotation/json_annotation.dart'; 

part 'vehicle_components_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class VehicleComponentsDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'description')
  String? description;

  VehicleComponentsDto({this.id, this.name, this.description});

   factory VehicleComponentsDto.fromJson(Map<String, dynamic> json) => _$VehicleComponentsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleComponentsDtoToJson(this);
}

