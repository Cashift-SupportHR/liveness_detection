// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_zone_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleZoneDto _$VehicleZoneDtoFromJson(Map<String, dynamic> json) =>
    VehicleZoneDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      expectedHours: json['expectedHours'] as int?,
      expectedMinutes: json['expectedMinutes'] as int?,
      companyId: json['companyId'] as int?,
      companyName: json['companyName'] as String?,
      projectId: json['projectId'] as int?,
      projectName: json['projectName'] as String?,
      shiftId: json['shiftId'] as int?,
      shiftName: json['shiftName'] as String?,
      vehicleId: json['vehicleId'] as int?,
      plateNumber: json['plateNumber'] as String?,
      latlngs: (json['latlngs'] as List<dynamic>?)
          ?.map((e) => VehicleZoneLatLng.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VehicleZoneDtoToJson(VehicleZoneDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'expectedHours': instance.expectedHours,
      'expectedMinutes': instance.expectedMinutes,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'shiftId': instance.shiftId,
      'shiftName': instance.shiftName,
      'vehicleId': instance.vehicleId,
      'plateNumber': instance.plateNumber,
      'latlngs': instance.latlngs,
    };
