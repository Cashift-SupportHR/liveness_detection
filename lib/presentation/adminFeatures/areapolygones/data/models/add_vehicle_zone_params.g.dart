// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_vehicle_zone_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddVehicleZoneParams _$AddVehicleZoneParamsFromJson(
        Map<String, dynamic> json) =>
    AddVehicleZoneParams(
      id: json['id'] as int?,
      name: json['name'] as String?,
      expectedHours: json['expectedHours'] as int?,
      expectedMinutes: json['expectedMinutes'] as int?,
      companyId: json['companyId'] as int?,
      projectId: json['projectId'] as int?,
      shiftId: json['shiftId'] as int?,
      vehicleId: json['vehicleId'] as int?,
      latlngs: (json['latlngs'] as List<dynamic>?)
          ?.map((e) => VehicleZoneLatLng.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddVehicleZoneParamsToJson(
    AddVehicleZoneParams instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'expectedHours': instance.expectedHours,
    'expectedMinutes': instance.expectedMinutes,
    'companyId': instance.companyId,
    'projectId': instance.projectId,
    'shiftId': instance.shiftId,
    'vehicleId': instance.vehicleId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('latlngs', instance.latlngs);
  return val;
}

VehicleZoneLatLng _$VehicleZoneLatLngFromJson(Map<String, dynamic> json) =>
    VehicleZoneLatLng(
      lat: json['lat'] as num?,
      lng: json['lng'] as num?,
    );

Map<String, dynamic> _$VehicleZoneLatLngToJson(VehicleZoneLatLng instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
