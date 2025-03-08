import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_vehicle_zone_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AddVehicleZoneParams {
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
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'vehicleId')
  int? vehicleId;
  @JsonKey(name: 'latlngs', includeIfNull: false)
  List<VehicleZoneLatLng>? latlngs;

  AddVehicleZoneParams({this.id, this.name, this.expectedHours, this.expectedMinutes, this.companyId, this.projectId, this.shiftId, this.vehicleId, this.latlngs});

   factory AddVehicleZoneParams.fromJson(Map<String, dynamic> json) => _$AddVehicleZoneParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddVehicleZoneParamsToJson(this);

}

@JsonSerializable(ignoreUnannotated: false)
class VehicleZoneLatLng {
  @JsonKey(name: 'lat')
  num? lat;
  @JsonKey(name: 'lng')
  num? lng;

  VehicleZoneLatLng({this.lat, this.lng});

   factory VehicleZoneLatLng.fromJson(Map<String, dynamic> json) => _$VehicleZoneLatLngFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleZoneLatLngToJson(this);

    static List<VehicleZoneLatLng> fromLatLngList(List<LatLng> json) {
    return json.map((e) => VehicleZoneLatLng(lat: e.latitude, lng: e.longitude)).toList();
    }

    static List<LatLng> toLatLngList(List<VehicleZoneLatLng> json) {
    return json.map((e) => LatLng(e.lat!.toDouble(), e.lng!.toDouble())).toList();
    }
}

