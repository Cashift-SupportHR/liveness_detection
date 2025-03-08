import 'package:json_annotation/json_annotation.dart'; 

part 'add_custodies_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AddCustodiesPrams {
  @JsonKey(name: 'vehicleHandoverId')
  int? vehicleHandoverId;
  @JsonKey(name: 'vehicleCustodiesStatuses')
  List<VehicleCustodiesStatuse>? vehicleCustodiesStatuses;

  AddCustodiesPrams({this.vehicleHandoverId, this.vehicleCustodiesStatuses});

   factory AddCustodiesPrams.fromJson(Map<String, dynamic> json) => _$AddCustodiesPramsFromJson(json);

   Map<String, dynamic> toJson() => _$AddCustodiesPramsToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class VehicleCustodiesStatuse {
  @JsonKey(name: 'vehicleCustodyId')
  int? vehicleCustodyId;
  @JsonKey(name: 'custodyStatus')
  bool? custodyStatus;

  VehicleCustodiesStatuse({this.vehicleCustodyId, this.custodyStatus});

   factory VehicleCustodiesStatuse.fromJson(Map<String, dynamic> json) => _$VehicleCustodiesStatuseFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleCustodiesStatuseToJson(this);
}

