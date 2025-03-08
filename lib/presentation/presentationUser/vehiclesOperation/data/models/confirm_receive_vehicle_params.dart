import 'package:json_annotation/json_annotation.dart'; 

part 'confirm_receive_vehicle_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ConfirmReceiveVehicleParams {
  @JsonKey(name: 'vehicleHandoverId')
  int? vehicleHandoverId;
  @JsonKey(name: 'handoverStatus')
  int? handoverStatus;
  @JsonKey(name: 'description')
  String? description;

  ConfirmReceiveVehicleParams({this.vehicleHandoverId, this.handoverStatus, this.description});

   factory ConfirmReceiveVehicleParams.fromJson(Map<String, dynamic> json) => _$ConfirmReceiveVehicleParamsFromJson(json);

   Map<String, dynamic> toJson() => _$ConfirmReceiveVehicleParamsToJson(this);
}

