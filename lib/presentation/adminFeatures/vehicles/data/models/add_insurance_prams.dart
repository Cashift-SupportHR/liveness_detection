import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

import '../../../employmentManagement/data/models/change_phone_number_params.dart';

part 'add_insurance_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AddInsurancePrams {
  @JsonKey(name: 'InsuranceNumber')
  String? insuranceNumber;
  @JsonKey(name: 'InsuranceProvider')
  String? insuranceProvider;
  @JsonKey(name: 'InsuranceExpiryDate')
  String? insuranceExpiryDate;
  @JsonKey(name: 'VehicleId')
  int? vehicleId;
  @JsonKey(name: 'Id')
  int? id;
  @JsonKey(name: 'VehicleInsuranceTypeId')
  String? vehicleInsuranceTypeId;
  @JsonKey(name: 'InsuranceImage')
  @FileJsonConverter()
  File? insuranceImage;

  AddInsurancePrams({this.insuranceNumber,this.id, this.insuranceProvider, this.insuranceExpiryDate, this.vehicleId, this.vehicleInsuranceTypeId, this.insuranceImage});

   factory AddInsurancePrams.fromJson(Map<String, dynamic> json) => _$AddInsurancePramsFromJson(json);

   Map<String, dynamic> toJson() => _$AddInsurancePramsToJson(this);
}

