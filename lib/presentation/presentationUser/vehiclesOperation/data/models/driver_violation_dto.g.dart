// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_violation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverViolationDto _$DriverViolationDtoFromJson(Map<String, dynamic> json) =>
    DriverViolationDto(
      eventType: json['eventType'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      speed: (json['speed'] as num?)?.toInt(),
      time: json['time'] as String?,
      eventIndexCode: json['eventIndexCode'] as String?,
      mobilevehicleIndexCode: (json['mobilevehicleIndexCode'] as num?)?.toInt(),
      isAllowPicture: json['isAllowPicture'] as bool?,
    );

Map<String, dynamic> _$DriverViolationDtoToJson(DriverViolationDto instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'speed': instance.speed,
      'time': instance.time,
      'eventIndexCode': instance.eventIndexCode,
      'mobilevehicleIndexCode': instance.mobilevehicleIndexCode,
      'isAllowPicture': instance.isAllowPicture,
    };
