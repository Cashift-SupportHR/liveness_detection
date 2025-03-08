
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../employmentManagement/data/models/change_phone_number_params.dart';

part 'add_covenant_vehicle_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class AddCovenantVehicleParams {
  @JsonKey(name: 'Id')
  int? id;
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'Description')
  String? description;
  @JsonKey(name: 'CustodyImagePath', includeIfNull: false)
  String? custodyImagePath;
  @JsonKey(name: 'CustodyImage')
  @FileJsonConverter()
  File? custodyImage;
  @JsonKey(name: 'VehicleId')
  int? vehicleId;

  AddCovenantVehicleParams({
    this.id,
    this.name,
    this.description,
    this.custodyImagePath,
    this.custodyImage,
    this.vehicleId,
  });

  factory AddCovenantVehicleParams.fromJson(Map<String, dynamic> json) => _$AddCovenantVehicleParamsFromJson(json);

  Map<String, dynamic> toJson() => _$AddCovenantVehicleParamsToJson(this);
}