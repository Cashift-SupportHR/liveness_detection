import 'package:json_annotation/json_annotation.dart'; 

part 'create_vehicle_handover_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class CreateVehicleHandoverPrams {
  @JsonKey(name: 'vehicleId')
  int? vehicleId;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'shiftId')
  int? shiftId;

  CreateVehicleHandoverPrams({this.vehicleId, this.companyId, this.projectId, this.shiftId});

   factory CreateVehicleHandoverPrams.fromJson(Map<String, dynamic> json) => _$CreateVehicleHandoverPramsFromJson(json);

   Map<String, dynamic> toJson() => _$CreateVehicleHandoverPramsToJson(this);
}

