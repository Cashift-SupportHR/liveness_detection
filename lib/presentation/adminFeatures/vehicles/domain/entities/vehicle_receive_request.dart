import '../../data/models/vehicle_receive_request_dto.dart';

class VehicleReceiveRequest {
  int? vehicleComponentHandoverId;
  int? vehicleCompnentId;
  String? vehicleName;
  String? vehicleHandoverDate;
  String? vehicleModel;
  String? freelancerName;
  int? freeLancerId;
  int? projectId;
  int? companyId;
  String? vehicleHandoverTime;
  String? vehiclePlateNumber;
  int? vehicleHandoverId;
  int? status;
  String? statusName;
  String? issueDescription;
  String? attachmentPath;
  String? type;
  String? actionTaken;
  String? codeType;
  String? shiftName;
  bool? allowForEdit;

  VehicleReceiveRequest({
    this.vehicleComponentHandoverId,
    this.vehicleCompnentId,
    this.vehicleName,
    this.vehicleHandoverDate,
    this.vehicleModel,
    this.freelancerName,
    this.freeLancerId,
    this.projectId,
    this.companyId,
    this.vehicleHandoverTime,
    this.vehiclePlateNumber,
    this.vehicleHandoverId,
    this.status,
    this.statusName,
    this.issueDescription,
    this.attachmentPath,
    this.type,
    this.actionTaken,
    this.codeType,
    this.shiftName,
    this.allowForEdit,
  });

  factory VehicleReceiveRequest.fromDto(VehicleReceiveRequestDto dto) =>
      VehicleReceiveRequest(
        vehicleComponentHandoverId: dto.vehicleComponentHandoverId,
        vehicleCompnentId: dto.vehicleCompnentId,
        vehicleName: dto.vehicleName,
        vehicleHandoverDate: dto.vehicleHandoverDate,
        vehicleModel: dto.vehicleModel,
        freelancerName: dto.freelancerName,
        freeLancerId: dto.freeLancerId,
        projectId: dto.projectId,
        companyId: dto.companyId,
        vehicleHandoverTime: dto.vehicleHandoverTime,
        vehiclePlateNumber: dto.vehiclePlateNumber,
        vehicleHandoverId: dto.vehicleHandoverId,
        status: dto.status,
        statusName: dto.statusName,
        issueDescription: dto.issueDescription,
        attachmentPath: dto.attachmentPath,
        type: dto.type,
        actionTaken: dto.actionTaken,
        codeType: dto.codeType,
        shiftName: dto.shiftName,
        allowForEdit: dto.allowForEdit,
      );

  static List<VehicleReceiveRequest> fromDtoList(
      List<VehicleReceiveRequestDto> dtos) =>
      dtos.map((dto) => VehicleReceiveRequest.fromDto(dto)).toList();
}
