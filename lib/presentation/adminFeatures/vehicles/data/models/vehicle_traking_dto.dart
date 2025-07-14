import 'package:json_annotation/json_annotation.dart'; 

part 'vehicle_traking_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class VehicleTrakingDto {
  @JsonKey(name: 'vehicleEventsCount')
  int? vehicleEventsCount;
  @JsonKey(name: 'drivers')
  List<Driver>? drivers;
  @JsonKey(name: 'vehicleEvents')
  List<VehicleEvent>? vehicleEvents;
  @JsonKey(name: 'vehicleGPSDetails')
  VehicleGPSDetails? vehicleGPSDetails;

  VehicleTrakingDto({this.vehicleEventsCount, this.drivers, this.vehicleEvents, this.vehicleGPSDetails});

   factory VehicleTrakingDto.fromJson(Map<String, dynamic> json) => _$VehicleTrakingDtoFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleTrakingDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Driver {
  @JsonKey(name: 'freelancerInfoId')
  int? freelancerInfoId;
  @JsonKey(name: 'freelancerInfoName')
  String? freelancerInfoName;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'shiftName')
  String? shiftName;

  Driver({this.freelancerInfoId, this.freelancerInfoName, this.projectId, this.projectName, this.shiftId, this.shiftName});

   factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);

   Map<String, dynamic> toJson() => _$DriverToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class VehicleEvent {
  @JsonKey(name: 'eventIndexCode')
  String? eventIndexCode;
  @JsonKey(name: 'eventType')
  String? eventType;
  @JsonKey(name: 'mobilevehicleIndexCode')
  int? mobilevehicleIndexCode;
  @JsonKey(name: 'latitude')
  String? latitude;
  @JsonKey(name: 'longitude')
  String? longitude;
  @JsonKey(name: 'speed')
  int? speed;
  @JsonKey(name: 'time')
  String? time;
  @JsonKey(name: 'isAllowPicture')
  bool? isAllowPicture;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'address')
  String? address;

  VehicleEvent({this.eventIndexCode, this.eventType, this.mobilevehicleIndexCode, this.latitude, this.longitude, this.speed, this.time, this.isAllowPicture, this.companyId, this.companyName, this.address});

   factory VehicleEvent.fromJson(Map<String, dynamic> json) => _$VehicleEventFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleEventToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class VehicleGPSDetails {
  @JsonKey(name: 'details')
  List<Detail>? details;
  @JsonKey(name: 'maxSpeed')
  int? maxSpeed;

  VehicleGPSDetails({this.details, this.maxSpeed});

   factory VehicleGPSDetails.fromJson(Map<String, dynamic> json) => _$VehicleGPSDetailsFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleGPSDetailsToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Detail {
  @JsonKey(name: 'latitude')
  double? latitude;
  @JsonKey(name: 'longitude')
  double? longitude;
  @JsonKey(name: 'time')
  String? time;
  @JsonKey(name: 'speed')
  int? speed;
  @JsonKey(name: 'direction')
  int? direction;

  Detail({this.latitude, this.longitude, this.time, this.speed, this.direction});

   factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);

   Map<String, dynamic> toJson() => _$DetailToJson(this);
}

