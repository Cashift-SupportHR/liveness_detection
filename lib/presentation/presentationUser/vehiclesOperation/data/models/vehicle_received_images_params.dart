import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../adminFeatures/vehicles/data/models/vehicle_image_params.dart';

part 'vehicle_received_images_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class VehicleReceivedImagesParams {
  // Exclude images from JSON serialization because MultipartFile data
  // is not meant to be represented as JSON.
  @JsonKey(includeToJson: false)
  @ListMultipartFileJsonConverter()
  final List<MultipartFile> images;
  @JsonKey(name: 'VehicleId')
  final int? vehicleId;
  @JsonKey(name: 'VehicleHandoverId')
  final int? vehicleHandoverId;

  VehicleReceivedImagesParams({
    required this.images,
    this.vehicleId,
    this.vehicleHandoverId,
  });

  factory VehicleReceivedImagesParams.fromJson(Map<String, dynamic> json) =>
      _$VehicleReceivedImagesParamsFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleReceivedImagesParamsToJson(this);
}
