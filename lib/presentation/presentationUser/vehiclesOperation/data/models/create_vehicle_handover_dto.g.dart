// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vehicle_handover_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateVehicleHandoverDto _$CreateVehicleHandoverDtoFromJson(
        Map<String, dynamic> json) =>
    CreateVehicleHandoverDto(
      vehicleId: json['vehicleId'] as int?,
      freelancerInfoId: json['freelancerInfoId'] as int?,
      companyId: json['companyId'] as int?,
      projectId: json['projectId'] as int?,
      shiftId: json['shiftId'] as int?,
      id: json['id'] as int?,
      isComplete: json['isComplete'] as bool?,
    );

Map<String, dynamic> _$CreateVehicleHandoverDtoToJson(
        CreateVehicleHandoverDto instance) =>
    <String, dynamic>{
      'vehicleId': instance.vehicleId,
      'freelancerInfoId': instance.freelancerInfoId,
      'companyId': instance.companyId,
      'projectId': instance.projectId,
      'shiftId': instance.shiftId,
      'id': instance.id,
      'isComplete': instance.isComplete,
    };
