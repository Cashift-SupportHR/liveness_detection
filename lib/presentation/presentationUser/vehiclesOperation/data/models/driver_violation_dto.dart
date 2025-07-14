import 'package:json_annotation/json_annotation.dart'; 

part 'driver_violation_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class DriverViolationDto {
  @JsonKey(name: 'eventType')
  String? eventType;
  @JsonKey(name: 'latitude')
  String? latitude;
  @JsonKey(name: 'longitude')
  String? longitude;
  @JsonKey(name: 'speed')
  int? speed;
  @JsonKey(name: 'time')
  String? time;
  @JsonKey(name: 'eventIndexCode')
  String? eventIndexCode;
  @JsonKey(name: 'mobilevehicleIndexCode')
  int? mobilevehicleIndexCode;
  @JsonKey(name: 'isAllowPicture')
  bool? isAllowPicture;

  DriverViolationDto({this.eventType, this.latitude, this.longitude, this.speed, this.time, this.eventIndexCode, this.mobilevehicleIndexCode, this.isAllowPicture});

   factory DriverViolationDto.fromJson(Map<String, dynamic> json) => _$DriverViolationDtoFromJson(json);

   Map<String, dynamic> toJson() => _$DriverViolationDtoToJson(this);
}

