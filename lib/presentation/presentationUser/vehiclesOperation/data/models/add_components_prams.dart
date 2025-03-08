import 'package:json_annotation/json_annotation.dart'; 

part 'add_components_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AddComponentsPrams {
  @JsonKey(name: 'vehicleHandoverId')
  int? vehicleHandoverId;
  @JsonKey(name: 'vehicleComponentsStatuses')
  List<VehicleComponentsStatuse>? vehicleComponentsStatuses;

  AddComponentsPrams({this.vehicleHandoverId, this.vehicleComponentsStatuses});

   factory AddComponentsPrams.fromJson(Map<String, dynamic> json) => _$AddComponentsPramsFromJson(json);

   Map<String, dynamic> toJson() => _$AddComponentsPramsToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class VehicleComponentsStatuse {
  @JsonKey(name: 'vehicleComponentId')
  int? vehicleComponentId;
  @JsonKey(name: 'componentStatus')
  bool? componentStatus;

  VehicleComponentsStatuse({this.vehicleComponentId, this.componentStatus});

   factory VehicleComponentsStatuse.fromJson(Map<String, dynamic> json) => _$VehicleComponentsStatuseFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleComponentsStatuseToJson(this);
}

/*
{
  "vehicleHandoverId": 0,
  "vehicleCustodiesStatuses": [
    {
      "vehicleCustodyId": 0,
      "custodyStatus": true
    }
  ]
} */