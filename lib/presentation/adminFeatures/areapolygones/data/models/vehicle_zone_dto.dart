import 'package:json_annotation/json_annotation.dart';

import 'add_vehicle_zone_params.dart';

part 'vehicle_zone_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class VehicleZoneDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'expectedHours')
  int? expectedHours;
  @JsonKey(name: 'expectedMinutes')
  int? expectedMinutes;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'shiftName')
  String? shiftName;
  @JsonKey(name: 'vehicleId')
  int? vehicleId;
  @JsonKey(name: 'plateNumber')
  String? plateNumber;
  @JsonKey(name: 'latlngs')
  List<VehicleZoneLatLng>? latlngs;

  VehicleZoneDto({this.id, this.name, this.expectedHours, this.expectedMinutes, this.companyId, this.companyName, this.projectId, this.projectName, this.shiftId, this.shiftName, this.vehicleId, this.plateNumber, this.latlngs});

   factory VehicleZoneDto.fromJson(Map<String, dynamic> json) => _$VehicleZoneDtoFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleZoneDtoToJson(this);
}

