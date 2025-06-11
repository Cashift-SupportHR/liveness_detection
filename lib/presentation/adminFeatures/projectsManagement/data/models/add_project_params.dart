import 'package:json_annotation/json_annotation.dart';

import 'location_project_params.dart';

part 'add_project_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class AddProjectParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'brandId')
  int? brandId;
  @JsonKey(name: 'cityId')
  int? cityId;
  @JsonKey(name: 'cityName')
  String? cityName;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'brandName')
  String? brandName;
  @JsonKey(name: 'nameEn')
  String? nameEn;
  @JsonKey(name: 'nameAr')
  String? nameAr;
  @JsonKey(name: 'addressEn')
  String? addressEn;
  @JsonKey(name: 'addressAr')
  String? addressAr;
  @JsonKey(name: 'latitude')
  String? latitude;
  @JsonKey(name: 'longtude')
  String? longtude;
  @JsonKey(name: 'attendanceTypeId')
  int? attendanceTypeId;
  @JsonKey(name: 'otherProject')
  List<LocationProjectParams>? otherProject;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'imageURL')
  String? imageURL;

  AddProjectParams(
      {this.id,
      this.brandId,
      this.companyId,
      this.cityId,
      this.brandName,
      this.cityName,
      this.nameEn,
      this.nameAr,
      this.addressEn,
      this.addressAr,
      this.latitude,
      this.longtude,
      this.attendanceTypeId,
      this.otherProject,
      this.companyName,
      this.image,
      this.imageURL});

  factory AddProjectParams.fromJson(Map<String, dynamic> json) => _$AddProjectParamsFromJson(json);

  Map<String, dynamic> toJson() => _$AddProjectParamsToJson(this);
}
