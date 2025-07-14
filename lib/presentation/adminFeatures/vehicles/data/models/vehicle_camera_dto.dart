import 'package:json_annotation/json_annotation.dart'; 

part 'vehicle_camera_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class VehicleCameraDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'cameraNameEn')
  String? cameraNameEn;
  @JsonKey(name: 'cameraNameAr')
  String? cameraNameAr;
  @JsonKey(name: 'cameraIndexCode')
  String? cameraIndexCode;
  @JsonKey(name: 'vehicleId')
  int? vehicleId;

  VehicleCameraDto({this.id, this.cameraNameEn, this.cameraNameAr, this.cameraIndexCode, this.vehicleId});

   factory VehicleCameraDto.fromJson(Map<String, dynamic> json) => _$VehicleCameraDtoFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleCameraDtoToJson(this);
}

