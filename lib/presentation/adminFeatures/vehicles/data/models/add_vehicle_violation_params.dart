import 'package:json_annotation/json_annotation.dart'; 

part 'add_vehicle_violation_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class AddVehicleViolationParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'details')
  String? details;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'streetName')
  String? streetName;
  @JsonKey(name: 'lat')
  double? lat;
  @JsonKey(name: 'lng')
  double? lng;
  @JsonKey(name: 'contractViolationTypeId')
  int? contractViolationTypeId;

  AddVehicleViolationParams({this.id, this.details, this.companyName, this.streetName, this.lat, this.lng, this.contractViolationTypeId});

   factory AddVehicleViolationParams.fromJson(Map<String, dynamic> json) => _$AddVehicleViolationParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddVehicleViolationParamsToJson(this);
}

