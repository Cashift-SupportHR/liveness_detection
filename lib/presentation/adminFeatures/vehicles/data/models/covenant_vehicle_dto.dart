import 'package:json_annotation/json_annotation.dart'; 

part 'covenant_vehicle_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class CovenantVehicleDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'custodyImage')
  String? custodyImage;
  @JsonKey(name: 'custodyImagePath')
  String? custodyImagePath;
  @JsonKey(name: 'vehicleId')
  int? vehicleId;

  CovenantVehicleDto({this.id, this.name, this.description, this.custodyImage, this.custodyImagePath, this.vehicleId});

   factory CovenantVehicleDto.fromJson(Map<String, dynamic> json) => _$CovenantVehicleDtoFromJson(json);

   Map<String, dynamic> toJson() => _$CovenantVehicleDtoToJson(this);
}

