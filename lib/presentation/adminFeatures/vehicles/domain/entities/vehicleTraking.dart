import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../data/models/vehicle_traking_dto.dart';

class VehicleTrackingEntity {
  final int? vehicleEventsCount;
  final List<DriverEntity>? drivers;
  final List<VehicleEventEntity>? vehicleEvents;
  final VehicleGPSDetailsEntity? vehicleGPSDetails;

  VehicleTrackingEntity({
    this.vehicleEventsCount,
    this.drivers,
    this.vehicleEvents,
    this.vehicleGPSDetails,
  });

  factory VehicleTrackingEntity.fromDto(VehicleTrakingDto dto) {
    return VehicleTrackingEntity(
      vehicleEventsCount: dto.vehicleEventsCount,
      drivers: dto.drivers?.map((d) => DriverEntity.fromDto(d)).toList(),
      vehicleEvents:
          dto.vehicleEvents?.map((e) => VehicleEventEntity.fromDto(e)).toList(),
      vehicleGPSDetails: VehicleGPSDetailsEntity.fromDto(dto.vehicleGPSDetails),
    );
  }
}

class DriverEntity {
  final int? freelancerInfoId;
  final String? freelancerInfoName;
  final int? projectId;
  final String? projectName;
  final int? shiftId;
  final String? shiftName;

  DriverEntity({
    this.freelancerInfoId,
    this.freelancerInfoName,
    this.projectId,
    this.projectName,
    this.shiftId,
    this.shiftName,
  });

  factory DriverEntity.fromDto(Driver dto) {
    return DriverEntity(
      freelancerInfoId: dto.freelancerInfoId,
      freelancerInfoName: dto.freelancerInfoName,
      projectId: dto.projectId,
      projectName: dto.projectName,
      shiftId: dto.shiftId,
      shiftName: dto.shiftName,
    );
  }
}

class VehicleEventEntity {
  final String? eventIndexCode;
  final String? eventType;
  final int? mobilevehicleIndexCode;
  final double? latitude;
  final double? longitude;
  final int? speed;
  final String? time;
  final bool? isAllowPicture;
  final int? companyId;
  final String? companyName;
  final String? address;

  VehicleEventEntity({
    this.eventIndexCode,
    this.eventType,
    this.mobilevehicleIndexCode,
    this.latitude,
    this.longitude,
    this.speed,
    this.time,
    this.isAllowPicture,
    this.companyId,
    this.companyName,
    this.address,
  });

  factory VehicleEventEntity.fromDto(VehicleEvent dto) {
    return VehicleEventEntity(
      eventIndexCode: dto.eventIndexCode,
      eventType: dto.eventType,
      mobilevehicleIndexCode: dto.mobilevehicleIndexCode,
      latitude: dto.latitude != null ? double.tryParse(dto.latitude!) : null,
      longitude: dto.longitude != null ? double.tryParse(dto.longitude!) : null,
      speed: dto.speed,
      time: dto.time,
      isAllowPicture: dto.isAllowPicture,
      companyId: dto.companyId,
      companyName: dto.companyName,
      address: dto.address,
    );
  }
}

class VehicleGPSDetailsEntity {
  final List<RoutePoint>? details;
  final int? maxSpeed;

  VehicleGPSDetailsEntity({this.details, this.maxSpeed});

  factory VehicleGPSDetailsEntity.fromDto(VehicleGPSDetails? dto) {
    return VehicleGPSDetailsEntity(
      details: dto?.details?.map((d) => RoutePoint.fromDto(d)).toList(),
      maxSpeed: dto?.maxSpeed,
    );
  }
}

class DetailEntity {
  final double? latitude;
  final double? longitude;
  final String? time;
  final int? speed;
  final int? direction;

  DetailEntity({
    this.latitude,
    this.longitude,
    this.time,
    this.speed,
    this.direction,
  });

  factory DetailEntity.fromDto(Detail dto) {
    return DetailEntity(
      latitude: dto.latitude,
      longitude: dto.longitude,
      time: dto.time,
      speed: dto.speed,
      direction: dto.direction,
    );
  }
}

class RoutePoint {
  final LatLng point;
  final int speed;
  final int direction;
  final double angle;

  const RoutePoint({
    required this.point,
    required this.speed,
    required this.direction,
    required this.angle,
  });

  factory RoutePoint.fromDto(Detail dto) {
    return RoutePoint(
      point: LatLng(dto.latitude ?? 0, dto.longitude ?? 0),
      angle: 0,
      speed: dto.speed ?? 0,
      direction: dto.direction ?? 0,
    );
  }
}
