// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_round_trip_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddRoundTripParams _$AddRoundTripParamsFromJson(Map<String, dynamic> json) =>
    AddRoundTripParams(
      id: json['id'] as int?,
      vehiclesZoneId: json['vehiclesZoneId'] as int?,
      roundTypeId: json['roundTyepId'] as int?,
    );

Map<String, dynamic> _$AddRoundTripParamsToJson(AddRoundTripParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehiclesZoneId': instance.vehiclesZoneId,
      'roundTyepId': instance.roundTypeId,
    };
