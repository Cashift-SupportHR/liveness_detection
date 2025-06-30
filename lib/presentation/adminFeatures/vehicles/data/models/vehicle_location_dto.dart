import 'package:json_annotation/json_annotation.dart';

part 'vehicle_location_dto.g.dart';

@JsonSerializable()
class VehicleLocationDto {
  @JsonKey(name: "zone")
  final List<Zone>? zone;
  @JsonKey(name: "currentLocation")
  final CurrentLocation? currentLocation;

  VehicleLocationDto ({
    this.zone,
    this.currentLocation,
  });

  factory VehicleLocationDto.fromJson(Map<String, dynamic> json) {
    return _$VehicleLocationDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$VehicleLocationDtoToJson(this);
  }
}

@JsonSerializable()
class Zone {
  @JsonKey(name: "lat")
  final double? lat;
  @JsonKey(name: "lng")
  final double? lng;

  Zone ({
    this.lat,
    this.lng,
  });

  factory Zone.fromJson(Map<String, dynamic> json) {
    return _$ZoneFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ZoneToJson(this);
  }
}

@JsonSerializable()
class CurrentLocation {
  @JsonKey(name: "lat")
  final int? lat;
  @JsonKey(name: "lng")
  final int? lng;

  CurrentLocation ({
    this.lat,
    this.lng,
  });

  factory CurrentLocation.fromJson(Map<String, dynamic> json) {
    return _$CurrentLocationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CurrentLocationToJson(this);
  }
}


