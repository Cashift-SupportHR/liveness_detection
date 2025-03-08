// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vehicle_handover_prams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateVehicleHandoverPrams _$CreateVehicleHandoverPramsFromJson(
        Map<String, dynamic> json) =>
    CreateVehicleHandoverPrams(
      vehicleId: json['vehicleId'] as int?,
      companyId: json['companyId'] as int?,
      projectId: json['projectId'] as int?,
      shiftId: json['shiftId'] as int?,
    );

Map<String, dynamic> _$CreateVehicleHandoverPramsToJson(
        CreateVehicleHandoverPrams instance) =>
    <String, dynamic>{
      'vehicleId': instance.vehicleId,
      'companyId': instance.companyId,
      'projectId': instance.projectId,
      'shiftId': instance.shiftId,
    };
