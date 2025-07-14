// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_video_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleVideoParams _$VehicleVideoParamsFromJson(Map<String, dynamic> json) =>
    VehicleVideoParams(
      vehicleId: (json['vehicleId'] as num?)?.toInt(),
      isVideoStream: json['isVideoStream'] as bool?,
      beginTime: json['beginTime'] as String?,
      cameraIndexCode: json['cameraIndexCode'] as String?,
      isFirstMinute: json['isFirstMinute'] as bool? ?? true,
    );

Map<String, dynamic> _$VehicleVideoParamsToJson(VehicleVideoParams instance) =>
    <String, dynamic>{
      'vehicleId': instance.vehicleId,
      'isVideoStream': instance.isVideoStream,
      'beginTime': instance.beginTime,
      'cameraIndexCode': instance.cameraIndexCode,
      'isFirstMinute': instance.isFirstMinute,
    };
