import 'package:json_annotation/json_annotation.dart'; 

part 'receive_vehicle_data_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ReceiveVehicleDataDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'vehicleId')
  int? vehicleId;
  @JsonKey(name: 'vehicleBrand')
  String? vehicleBrand;
  @JsonKey(name: 'vehicleModel')
  String? vehicleModel;
  @JsonKey(name: 'vehiclePlateNumber')
  String? vehiclePlateNumber;
  @JsonKey(name: 'vehicleHandoverDate')
  String? vehicleHandoverDate;
  @JsonKey(name: 'vehicleHandoverTime')
  String? vehicleHandoverTime;
  @JsonKey(name: 'freelancerInfoId')
  int? freelancerInfoId;
  @JsonKey(name: 'freelancerName')
  String? freelancerName;
  @JsonKey(name: 'vehicleImage')
  String? vehicleImage;
  @JsonKey(name: 'isComplete')
  bool? isComplete;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'shiftName')
  String? shiftName;
  @JsonKey(name: 'startShiftDateTime')
  String? startShiftDateTime;
  @JsonKey(name: 'endShiftDateTime')
  String? endShiftDateTime;
  @JsonKey(name: 'licenseExpiryDate')
  String? licenseExpiryDate;
  @JsonKey(name: 'yearOfManufacture')
  int? yearOfManufacture;
  @JsonKey(name: 'licenseNumber')
  String? licenseNumber;
  @JsonKey(name: 'specifications')
  String? specifications;

  ReceiveVehicleDataDto({this.id, this.vehicleId, this.vehicleBrand, this.vehicleModel, this.vehiclePlateNumber, this.vehicleHandoverDate, this.vehicleHandoverTime, this.freelancerInfoId, this.freelancerName, this.vehicleImage, this.isComplete, this.companyId, this.companyName, this.projectId, this.projectName, this.shiftId, this.shiftName, this.startShiftDateTime, this.endShiftDateTime, this.licenseExpiryDate, this.yearOfManufacture, this.licenseNumber, this.specifications});

   factory ReceiveVehicleDataDto.fromJson(Map<String, dynamic> json) => _$ReceiveVehicleDataDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ReceiveVehicleDataDtoToJson(this);
}

