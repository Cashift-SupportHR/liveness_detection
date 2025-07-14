import 'package:json_annotation/json_annotation.dart'; 

part 'vehicle_event_picture_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class VehicleEventPicturePrams {
  @JsonKey(name: 'eventIndexCode')
  String? eventIndexCode;
  @JsonKey(name: 'mobileVehicleIndexCode')
  int? mobileVehicleIndexCode;

  VehicleEventPicturePrams({this.eventIndexCode, this.mobileVehicleIndexCode});

   factory VehicleEventPicturePrams.fromJson(Map<String, dynamic> json) => _$VehicleEventPicturePramsFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleEventPicturePramsToJson(this);
}

