import 'package:json_annotation/json_annotation.dart'; 

part 'round_trip_details_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class RoundTripDetailsDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'notes')
  String? notes;
  @JsonKey(name: 'typeName')
  String? typeName;
  @JsonKey(name: 'startRound')
  String? startRound;
  @JsonKey(name: 'endRound')
  String? endRound;
  @JsonKey(name: 'roundTime')
  String? roundTime;

  RoundTripDetailsDto({this.id, this.notes, this.typeName, this.startRound, this.endRound, this.roundTime});

   factory RoundTripDetailsDto.fromJson(Map<String, dynamic> json) => _$RoundTripDetailsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$RoundTripDetailsDtoToJson(this);
}

