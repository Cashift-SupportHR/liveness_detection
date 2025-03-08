import 'package:json_annotation/json_annotation.dart';

import 'custody_handover_dto.dart';
import 'vehicle_component_handover_dto.dart';

part 'receive_vehicle_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ReceiveVehicleDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'vehicleId')
  int? vehicleId;

  @JsonKey(name: 'vehicleBrand')
  String? vehicleBrand;
  @JsonKey(name: 'vehicleModel')
  String? vehicleModel;
  @JsonKey(name: 'vehiclePlateNumber')
  String? vehiclePlateNumber;
  @JsonKey(name: 'vehicleHandoverDate')
  String? vehicleHandoverDate;
  @JsonKey(name: 'vehicleHandoverTime')
  String? vehicleHandoverTime;
  @JsonKey(name: 'freelancerInfoId')
  int? freelancerInfoId;
  @JsonKey(name: 'freelancerName')
  String? freelancerName;
  @JsonKey(name: 'vehicleImage')
  String? vehicleImage;
  @JsonKey(name: 'isComplete')
  bool? isComplete;
  @JsonKey(name: 'vehiclesComponentsHandovers')
  List<VehicleComponentHandoverDto>? vehiclesComponentsHandovers;
  @JsonKey(name: 'vehiclesCustodiesHandovers')
  List<CustodyHandoverDto>? vehiclesCustodiesHandovers;

  ReceiveVehicleDto({this.id, this.vehicleId,  this.vehicleBrand, this.vehicleModel, this.vehiclePlateNumber, this.vehicleHandoverDate, this.vehicleHandoverTime, this.freelancerInfoId, this.freelancerName, this.vehicleImage, this.isComplete, this.vehiclesComponentsHandovers, this.vehiclesCustodiesHandovers});

   factory ReceiveVehicleDto.fromJson(Map<String, dynamic> json) => _$ReceiveVehicleDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ReceiveVehicleDtoToJson(this);
}

