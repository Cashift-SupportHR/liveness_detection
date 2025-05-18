import 'package:json_annotation/json_annotation.dart'; 

part 'vehicle_traking_details_prams.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class VehicleTrakingDetailsPrams {
  @JsonKey(name: 'vehicleId')
  int? vehicleId;
  @JsonKey(name: 'vehicleHandoverId')
  int? vehicleHandoverId;
  @JsonKey(name: 'isVehicleHandover')
  bool? isVehicleHandover;
  @JsonKey(name: 'startShiftDateTime')
  String? startShiftDateTime;
  @JsonKey(name: 'endShiftDateTime')
  String? endShiftDateTime;

  VehicleTrakingDetailsPrams({this.vehicleHandoverId,this.isVehicleHandover,this.vehicleId, this.startShiftDateTime, this.endShiftDateTime});

   factory VehicleTrakingDetailsPrams.fromJson(Map<String, dynamic> json) => _$VehicleTrakingDetailsPramsFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleTrakingDetailsPramsToJson(this);
}

/*
 "isVehicleHandover": true,
  "vehicleId": 0,
  "vehicleHandoverId": 0,
  "startShiftDateTime": "string",
  "endShiftDateTime": "string"
 */