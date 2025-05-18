// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camera_search_results_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CameraSearchResultsDto _$CameraSearchResultsDtoFromJson(
        Map<String, dynamic> json) =>
    CameraSearchResultsDto(
      cameraName: json['cameraName'] as String?,
      vehiclePlatNo: json['vehiclePlatNo'] as String?,
      videoUrl: json['videoUrl'] as String?,
    );

Map<String, dynamic> _$CameraSearchResultsDtoToJson(
        CameraSearchResultsDto instance) =>
    <String, dynamic>{
      'cameraName': instance.cameraName,
      'vehiclePlatNo': instance.vehiclePlatNo,
      'videoUrl': instance.videoUrl,
    };
