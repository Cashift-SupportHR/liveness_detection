// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_image_and_descriptions_components_prams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddImageAndDescriptionsComponentsPrams
    _$AddImageAndDescriptionsComponentsPramsFromJson(
            Map<String, dynamic> json) =>
        AddImageAndDescriptionsComponentsPrams(
          IssueDescription: json['IssueDescription'] as String?,
          ComponentStatus: json['ComponentStatus'] as bool?,
          custodyStatus: json['CustodyStatus'] as bool?,
          VehicleComponentId: json['VehicleComponentId'] as int?,
          VehicleHandoverId: json['VehicleHandoverId'] as int?,
          VehicleCustodyId: json['VehicleCustodyId'] as int?,
        );

Map<String, dynamic> _$AddImageAndDescriptionsComponentsPramsToJson(
        AddImageAndDescriptionsComponentsPrams instance) =>
    <String, dynamic>{
      'IssueDescription': instance.IssueDescription,
      'ComponentStatus': instance.ComponentStatus,
      'CustodyStatus': instance.custodyStatus,
      'VehicleComponentId': instance.VehicleComponentId,
      'VehicleHandoverId': instance.VehicleHandoverId,
      'VehicleCustodyId': instance.VehicleCustodyId,
    };
