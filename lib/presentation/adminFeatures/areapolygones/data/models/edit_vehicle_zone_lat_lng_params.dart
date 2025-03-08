import 'package:json_annotation/json_annotation.dart';

import 'add_vehicle_zone_params.dart';

part 'edit_vehicle_zone_lat_lng_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class EditVehicleZoneLatLngParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'latlngs')
  List<VehicleZoneLatLng>? latlngs;

  EditVehicleZoneLatLngParams({this.id, this.latlngs});

   factory EditVehicleZoneLatLngParams.fromJson(Map<String, dynamic> json) => _$EditVehicleZoneLatLngParamsFromJson(json);

   Map<String, dynamic> toJson() => _$EditVehicleZoneLatLngParamsToJson(this);
}
