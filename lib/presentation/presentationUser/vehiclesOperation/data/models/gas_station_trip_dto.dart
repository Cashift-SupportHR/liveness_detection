import 'package:json_annotation/json_annotation.dart'; 

part 'gas_station_trip_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class GasStationTripDto {
  @JsonKey(name: 'fillingStationId')
  int? fillingStationId;
  @JsonKey(name: 'fillingStationNameAr')
  String? fillingStationNameAr;
  @JsonKey(name: 'fillingStationNameEn')
  String? fillingStationNameEn;
  @JsonKey(name: 'latitude')
  double? latitude;
  @JsonKey(name: 'longtude')
  double? longtude;

  GasStationTripDto({this.fillingStationId, this.fillingStationNameAr, this.fillingStationNameEn, this.latitude, this.longtude});

   factory GasStationTripDto.fromJson(Map<String, dynamic> json) => _$GasStationTripDtoFromJson(json);

   Map<String, dynamic> toJson() => _$GasStationTripDtoToJson(this);
}

