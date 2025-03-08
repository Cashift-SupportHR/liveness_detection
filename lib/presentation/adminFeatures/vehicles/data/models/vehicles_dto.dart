import 'package:json_annotation/json_annotation.dart'; 

part 'vehicles_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class VehiclesDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'vehicleCode')
  String? vehicleCode;
  @JsonKey(name: 'model')
  String? model;
  @JsonKey(name: 'yearOfManufacture')
  int? yearOfManufacture;
  @JsonKey(name: 'vehicleColorName')
  String? color;
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
  @JsonKey(name: 'projectId')
  int? projectId;

  VehiclesDto({this.id, this.vehicleCode, this.model, this.yearOfManufacture, this.color, this.plateNumber, this.licenseNumber, this.licenseExpiryDate, this.specifications, this.vehicleImage, this.vehicleBrandName, this.vehicleBrandId, this.companyName, this.companyId, this.projectName, this.projectId});

   factory VehiclesDto.fromJson(Map<String, dynamic> json) => _$VehiclesDtoFromJson(json);

   Map<String, dynamic> toJson() => _$VehiclesDtoToJson(this);
}

