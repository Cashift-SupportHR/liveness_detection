import 'package:json_annotation/json_annotation.dart'; 

part 'add_maintenance_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AddMaintenancePrams {
  @JsonKey(name: 'Id',includeIfNull: false)
  int? id;
  @JsonKey(name: 'RoundTripId',includeIfNull: false)
  int? roundTripId;
  @JsonKey(name: 'Description')
  String? description;
  @JsonKey(name: 'FaultMaintainceTypeId')
  int? faultMaintainceTypeId;

  AddMaintenancePrams({this.id,this.roundTripId, this.description, this.faultMaintainceTypeId});

   factory AddMaintenancePrams.fromJson(Map<String, dynamic> json) => _$AddMaintenancePramsFromJson(json);

   Map<String, dynamic> toJson() => _$AddMaintenancePramsToJson(this);
}

