// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_round_trip_fill_station_prams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddRoundTripFillStationPrams _$AddRoundTripFillStationPramsFromJson(
        Map<String, dynamic> json) =>
    AddRoundTripFillStationPrams(
      id: json['id'] as int?,
      vehicleZoneId: json['vehicleZoneId'] as int?,
      roundTripId: json['roundTripId'] as int?,
      stationId: json['stationId'] as int?,
    );

Map<String, dynamic> _$AddRoundTripFillStationPramsToJson(
        AddRoundTripFillStationPrams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehicleZoneId': instance.vehicleZoneId,
      'roundTripId': instance.roundTripId,
      'stationId': instance.stationId,
    };
