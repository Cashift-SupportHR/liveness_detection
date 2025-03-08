import 'package:json_annotation/json_annotation.dart'; 

part 'vehicle_receive_request_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class VehicleReceiveRequestDto {
  @JsonKey(name: 'vehicleComponentHandoverId')
  int? vehicleComponentHandoverId;
  @JsonKey(name: 'vehicleCompnentId')
  int? vehicleCompnentId;
  @JsonKey(name: 'vehicleName')
  String? vehicleName;
  @JsonKey(name: 'vehicleHandoverDate')
  String? vehicleHandoverDate;
  @JsonKey(name: 'vehicleModel')
  String? vehicleModel;
  @JsonKey(name: 'freelancerName')
  String? freelancerName;
  @JsonKey(name: 'freeLancerId')
  int? freeLancerId;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'vehicleHandoverTime')
  String? vehicleHandoverTime;
  @JsonKey(name: 'vehiclePlateNumber')
  String? vehiclePlateNumber;
  @JsonKey(name: 'vehicleHandoverId')
  int? vehicleHandoverId;
  @JsonKey(name: 'status')
  int? status;
  @JsonKey(name: 'statusName')
  String? statusName;
  @JsonKey(name: 'issueDescription')
  String? issueDescription;
  @JsonKey(name: 'attachmentPath')
  String? attachmentPath;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'actionTaken')
  String? actionTaken;
  @JsonKey(name: 'codeType')
  String? codeType;
  @JsonKey(name: 'shiftName')
  String? shiftName;
  @JsonKey(name: 'allowForEdit')
  bool? allowForEdit;

  VehicleReceiveRequestDto({this.vehicleComponentHandoverId, this.vehicleCompnentId, this.vehicleName, this.vehicleHandoverDate, this.vehicleModel, this.freelancerName, this.freeLancerId, this.projectId, this.companyId, this.vehicleHandoverTime, this.vehiclePlateNumber, this.vehicleHandoverId, this.status, this.statusName, this.issueDescription, this.attachmentPath, this.type, this.actionTaken, this.codeType, this.shiftName, this.allowForEdit});

   factory VehicleReceiveRequestDto.fromJson(Map<String, dynamic> json) => _$VehicleReceiveRequestDtoFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleReceiveRequestDtoToJson(this);
}

