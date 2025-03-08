import 'package:json_annotation/json_annotation.dart'; 

part 'add_round_trip_details_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AddRoundTripDetailsParams {
  @JsonKey(name: 'vehicleZoneId')
  int? vehicleZoneId;
  @JsonKey(name: 'roundTypeId')
  int? roundTypeId;
  @JsonKey(name: 'roundTripId')
  int? roundTripId;
  @JsonKey(name: 'notes')
  String? notes;

  AddRoundTripDetailsParams({this.vehicleZoneId, this.roundTypeId, this.roundTripId, this.notes});

   factory AddRoundTripDetailsParams.fromJson(Map<String, dynamic> json) => _$AddRoundTripDetailsParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddRoundTripDetailsParamsToJson(this);
}

