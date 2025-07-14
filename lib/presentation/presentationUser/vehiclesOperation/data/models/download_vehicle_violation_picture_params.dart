import 'package:json_annotation/json_annotation.dart'; 

part 'download_vehicle_violation_picture_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class DownloadVehicleViolationPictureParams {
  @JsonKey(name: 'mobileVehicleIndexCode')
  String? mobileVehicleIndexCode;
  @JsonKey(name: 'eventIndexCode')
  String? eventIndexCode;

  DownloadVehicleViolationPictureParams({this.mobileVehicleIndexCode, this.eventIndexCode});

   factory DownloadVehicleViolationPictureParams.fromJson(Map<String, dynamic> json) => _$DownloadVehicleViolationPictureParamsFromJson(json);

   Map<String, dynamic> toJson() => _$DownloadVehicleViolationPictureParamsToJson(this);
}

