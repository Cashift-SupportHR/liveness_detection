import 'package:json_annotation/json_annotation.dart'; 

part 'camera_search_results_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class CameraSearchResultsDto {
  @JsonKey(name: 'cameraName')
  String? cameraName;
  @JsonKey(name: 'vehiclePlatNo')
  String? vehiclePlatNo;
  @JsonKey(name: 'videoUrl')
  String? videoUrl;

  CameraSearchResultsDto({this.cameraName, this.vehiclePlatNo, this.videoUrl});

   factory CameraSearchResultsDto.fromJson(Map<String, dynamic> json) => _$CameraSearchResultsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$CameraSearchResultsDtoToJson(this);
}

