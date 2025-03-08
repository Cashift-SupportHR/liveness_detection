
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_image_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class VehicleImageParams {
  @JsonKey(name: 'Images')
  @ListMultipartFileJsonConverter()
  List<MultipartFile> images;
  @JsonKey(name: 'VehicleId')
  int vehicleId;

  VehicleImageParams({
    required this.images,
    required this.vehicleId,
  });

  factory VehicleImageParams.fromJson(Map<String, dynamic> json) => _$VehicleImageParamsFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleImageParamsToJson(this);
}

class ListMultipartFileJsonConverter implements JsonConverter<List<MultipartFile>, List<dynamic>> {
  const ListMultipartFileJsonConverter();

  @override
  List<MultipartFile> fromJson(List<dynamic> json) {
    return json.map((e) => MultipartFile.fromFileSync(e as String)).toList();
  }

  @override
  List<dynamic> toJson(List<MultipartFile> object) {
    return object.map((e) => e.filename).toList();
  }
}
