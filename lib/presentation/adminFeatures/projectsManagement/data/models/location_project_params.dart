import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location_project_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class LocationProjectParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'latitude')
  String? latitude;
  @JsonKey(name: 'longtude')
  String? longtude;
  @JsonKey(name: 'projectId')
  int? projectId;

  LocationProjectParams({this.id, this.description, this.latitude, this.longtude, this.projectId});

   factory LocationProjectParams.fromJson(Map<String, dynamic> json) => _$LocationProjectParamsFromJson(json);

   Map<String, dynamic> toJson() => _$LocationProjectParamsToJson(this);

  toLatLng() {
    return LatLng(double.parse(latitude ?? '0.0'), double.parse(longtude ?? '0.0'));
  }
}

