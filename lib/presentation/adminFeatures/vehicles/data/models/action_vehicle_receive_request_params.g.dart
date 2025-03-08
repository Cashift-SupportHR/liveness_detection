// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_vehicle_receive_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActionVehicleReceiveRequestParams _$ActionVehicleReceiveRequestParamsFromJson(
        Map<String, dynamic> json) =>
    ActionVehicleReceiveRequestParams(
      vehicleHandoverId: json['vehicleHandoverId'] as int?,
      scheduleEmployeeId: json['scheduleEmployeeId'] as int?,
      handoverId: json['handoverId'] as int?,
      issueDescriptionStatus: json['issueDescriptionStatus'] as int?,
      action: json['action'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ActionVehicleReceiveRequestParamsToJson(
        ActionVehicleReceiveRequestParams instance) =>
    <String, dynamic>{
      'vehicleHandoverId': instance.vehicleHandoverId,
      'scheduleEmployeeId': instance.scheduleEmployeeId,
      'handoverId': instance.handoverId,
      'issueDescriptionStatus': instance.issueDescriptionStatus,
      'action': instance.action,
      'type': instance.type,
    };
