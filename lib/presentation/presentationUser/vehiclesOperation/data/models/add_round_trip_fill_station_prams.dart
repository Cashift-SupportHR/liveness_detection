import 'package:json_annotation/json_annotation.dart'; 

part 'add_round_trip_fill_station_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AddRoundTripFillStationPrams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'vehicleZoneId')
  int? vehicleZoneId;
  @JsonKey(name: 'roundTripId')
  int? roundTripId;
  @JsonKey(name: 'stationId')
  int? stationId;

  AddRoundTripFillStationPrams({this.id, this.vehicleZoneId, this.roundTripId, this.stationId});

   factory AddRoundTripFillStationPrams.fromJson(Map<String, dynamic> json) => _$AddRoundTripFillStationPramsFromJson(json);

   Map<String, dynamic> toJson() => _$AddRoundTripFillStationPramsToJson(this);
}

