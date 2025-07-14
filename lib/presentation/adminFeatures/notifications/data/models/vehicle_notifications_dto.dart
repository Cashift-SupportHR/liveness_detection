import 'package:json_annotation/json_annotation.dart'; 

part 'vehicle_notifications_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class VehicleNotificationsDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'notifyType')
  String? notifyType;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'employee')
  String? employee;
  @JsonKey(name: 'vehiclePlateNumber')
  String? vehiclePlateNumber;
  @JsonKey(name: 'notifyDate')
  String? notifyDate;
  @JsonKey(name: 'notifyTime')
  String? notifyTime;
  @JsonKey(name: 'action')
  String? action;
  @JsonKey(name: 'finalAction')
  String? finalAction;

  VehicleNotificationsDto({this.id, this.notifyType, this.description, this.employee, this.vehiclePlateNumber, this.notifyDate, this.notifyTime, this.action, this.finalAction});

   factory VehicleNotificationsDto.fromJson(Map<String, dynamic> json) => _$VehicleNotificationsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$VehicleNotificationsDtoToJson(this);
}

