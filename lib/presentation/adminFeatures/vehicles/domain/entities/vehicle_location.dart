import '../../data/models/vehicle_location_dto.dart';

class VehicleLocation {
  final List<ZoneEntity>? zone;
  final CurrentLocationEntity? currentLocation;

  VehicleLocation({
    this.zone,
    this.currentLocation,
  });

  factory VehicleLocation.fromDto(VehicleLocationDto dto) {
    return VehicleLocation(
      zone: dto.zone?.map((z) => ZoneEntity.fromDto(z)).toList(),
      currentLocation: dto.currentLocation != null
          ? CurrentLocationEntity.fromDto(dto.currentLocation!)
          : null,
    );
  }
}

class ZoneEntity {
  final double? lat;
  final double? lng;

  ZoneEntity({
    this.lat,
    this.lng,
  });

  factory ZoneEntity.fromDto(Zone dto) {
    return ZoneEntity(
      lat: dto.lat,
      lng: dto.lng,
    );
  }
}

class CurrentLocationEntity {
  final int? lat;
  final int? lng;

  CurrentLocationEntity({
    this.lat,
    this.lng,
  });

  factory CurrentLocationEntity.fromDto(CurrentLocation dto) {
    return CurrentLocationEntity(
      lat: dto.lat,
      lng: dto.lng,
    );
  }
}
