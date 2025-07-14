import '../../data/models/vehicle_notifications_dto.dart';

class VehicleNotification {
  int? id;
  String? notifyType;
  String? description;
  String? employee;
  String? vehiclePlateNumber;
  String? notifyDate;
  String? notifyTime;
  String? action;
  String? finalAction;

  VehicleNotification({
    this.id,
    this.notifyType,
    this.description,
    this.employee,
    this.vehiclePlateNumber,
    this.notifyDate,
    this.notifyTime,
    this.action,
    this.finalAction,
  });

  factory VehicleNotification.fromDto(VehicleNotificationsDto dto) {
    return VehicleNotification(
      id: dto.id,
      notifyType: dto.notifyType,
      description: dto.description,
      employee: dto.employee,
      vehiclePlateNumber: dto.vehiclePlateNumber,
      notifyDate: dto.notifyDate,
      notifyTime: dto.notifyTime,
      action: dto.action,
      finalAction: dto.finalAction,
    );
  }

  static List<VehicleNotification> fromDtoList(List<VehicleNotificationsDto> dtos) {
    return dtos.map((dto) => VehicleNotification.fromDto(dto)).toList();
  }
}
