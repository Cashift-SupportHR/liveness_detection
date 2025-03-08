import 'dart:io';

import 'package:json_annotation/json_annotation.dart';
import 'package:shiftapp/presentation/adminFeatures/employmentManagement/data/models/change_phone_number_params.dart';

part 'add_vehicle_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class AddVehicleParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'VehicleCode')
  int? vehicleCode;
  @JsonKey(name: 'Model')
  String? model;
  @JsonKey(name: 'YearOfManufacture')
  String? yearOfManufacture;
  @JsonKey(name: 'PlateNumber')
  String? plateNumber;
  @JsonKey(name: 'LicenseNumber')
  String? licenseNumber;
  @JsonKey(name: 'LicenseExpiryDate')
  String? licenseExpiryDate;
  @JsonKey(name: 'Specifications')
  String? specifications;
  @JsonKey(name: 'VehicleImage')
  String? vehicleImage;
  @JsonKey(name: 'VehicleImageFile')
  @FileJsonConverter()
  File? vehicleImageFile;
  @JsonKey(name: 'VehicleBrandId')
  String? vehicleBrandId;
  @JsonKey(name: 'CompanyId')
  String? companyId;
  @JsonKey(name: 'ProjectId')
  String? projectId;
  @JsonKey(name: 'VehicleColorId')
  int? vehicleColorId;

  AddVehicleParams({
    this.id,
    this.vehicleCode,
    this.model,
    this.yearOfManufacture,
    this.plateNumber,
    this.licenseNumber,
    this.licenseExpiryDate,
    this.specifications,
    this.vehicleImage,
    this.vehicleImageFile,
    this.vehicleBrandId,
    this.companyId,
    this.projectId,
    this.vehicleColorId,
  });

  factory AddVehicleParams.fromJson(Map<String, dynamic> json) => _$AddVehicleParamsFromJson(json);

  Map<String, dynamic> toJson() => _$AddVehicleParamsToJson(this);
}
