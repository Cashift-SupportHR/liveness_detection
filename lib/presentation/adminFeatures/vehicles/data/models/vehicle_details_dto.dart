import 'package:json_annotation/json_annotation.dart';

import 'custody_vehicle.dart';

part 'vehicle_details_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class VehicleDetailsDto {
  @JsonKey(name: 'vehicleListOfImages')
  List<VehicleListOfImage>? vehicleListOfImages;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'vehicleCode')
  String? vehicleCode;
  @JsonKey(name: 'model')
  String? model;
  @JsonKey(name: 'yearOfManufacture')
  int? yearOfManufacture;
  @JsonKey(name: 'vehicleColorName')
  String? vehicleColorName;
  @JsonKey(name: 'vehicleColorId')
  int? vehicleColorId;
  @JsonKey(name: 'plateNumber')
  String? plateNumber;
  @JsonKey(name: 'licenseNumber')
  String? licenseNumber;
  @JsonKey(name: 'licenseExpiryDate')
  String? licenseExpiryDate;
  @JsonKey(name: 'specifications')
  String? specifications;
  @JsonKey(name: 'vehicleImage')
  String? vehicleImage;
  @JsonKey(name: 'licenseImage')
  String? licenseImage;
  @JsonKey(name: 'vehicleBrandName')
  String? vehicleBrandName;
  @JsonKey(name: 'vehicleBrandId')
  int? vehicleBrandId;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'mobileVehicleIndexCode')
  String? mobileVehicleIndexCode;
  @JsonKey(name: 'custodies')
  List<CustodyVehicle>? custodies;
  @JsonKey(name: 'projectId')
  int? projectId;

  VehicleDetailsDto(
      {this.vehicleListOfImages,
      this.id,
      this.custodies,
      this.vehicleCode,
      this.model,
      this.yearOfManufacture,
      this.mobileVehicleIndexCode,
      this.vehicleColorName,
      this.vehicleColorId,
      this.plateNumber,
      this.licenseNumber,
      this.licenseExpiryDate,
      this.specifications,
      this.shiftId,
      this.vehicleImage,
      this.licenseImage,
      this.vehicleBrandName,
      this.vehicleBrandId,
      this.companyName,
      this.companyId,
      this.projectName,
      this.projectId});

   factory VehicleDetailsDto.fromJson(Map<String, dynamic> json) => _$VehicleDetailsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleDetailsDtoToJson(this);
  }

@JsonSerializable(ignoreUnannotated: false)
class VehicleListOfImage {
  @JsonKey(name: 'faceId')
  int? faceId;
  @JsonKey(name: 'faceName')
  String? faceName;
  @JsonKey(name: 'imageId')
  int? imageId;
  @JsonKey(name: 'imageUrl')
  String? imageUrl;

  VehicleListOfImage({this.faceId, this.faceName, this.imageId, this.imageUrl});

  factory VehicleListOfImage.fromJson(Map<String, dynamic> json) =>
      _$VehicleListOfImageFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleListOfImageToJson(this);
}
