// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_camera_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleCameraDto _$VehicleCameraDtoFromJson(Map<String, dynamic> json) =>
    VehicleCameraDto(
      id: (json['id'] as num?)?.toInt(),
      cameraNameEn: json['cameraNameEn'] as String?,
      cameraNameAr: json['cameraNameAr'] as String?,
      cameraIndexCode: json['cameraIndexCode'] as String?,
      vehicleId: (json['vehicleId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$VehicleCameraDtoToJson(VehicleCameraDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cameraNameEn': instance.cameraNameEn,
      'cameraNameAr': instance.cameraNameAr,
      'cameraIndexCode': instance.cameraIndexCode,
      'vehicleId': instance.vehicleId,
    };
