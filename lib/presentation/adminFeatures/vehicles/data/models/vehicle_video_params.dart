import 'package:json_annotation/json_annotation.dart'; 

part 'vehicle_video_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class VehicleVideoParams {
  @JsonKey(name: 'vehicleId')
  int? vehicleId;
  @JsonKey(name: 'isVideoStream')
  bool? isVideoStream;
  @JsonKey(name: 'beginTime')
  String? beginTime;
  @JsonKey(name: 'cameraIndexCode')
  String? cameraIndexCode;
  @JsonKey(name: 'isFirstMinute', includeIfNull: false, defaultValue: true)
  bool isFirstMinute;

  VehicleVideoParams({this.vehicleId, this.isVideoStream, this.beginTime, this.cameraIndexCode, this.isFirstMinute = true});

   factory VehicleVideoParams.fromJson(Map<String, dynamic> json) => _$VehicleVideoParamsFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleVideoParamsToJson(this);
}

