import 'package:json_annotation/json_annotation.dart'; 

part 'add_vehicle_camera_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AddVehicleCameraParams {
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

  AddVehicleCameraParams({this.id, this.cameraNameEn, this.cameraNameAr, this.cameraIndexCode, this.vehicleId});

   factory AddVehicleCameraParams.fromJson(Map<String, dynamic> json) => _$AddVehicleCameraParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddVehicleCameraParamsToJson(this);
}

