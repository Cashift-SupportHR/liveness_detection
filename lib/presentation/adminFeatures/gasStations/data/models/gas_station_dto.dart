import 'package:json_annotation/json_annotation.dart'; 

part 'gas_station_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class GasStationDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'stationNameEn')
  String? stationNameEn;
  @JsonKey(name: 'stationNameAr')
  String? stationNameAr;
  @JsonKey(name: 'latitude')
  double? latitude;
  @JsonKey(name: 'longtude')
  double? longtude;

  GasStationDto({this.id, this.companyId, this.projectId, this.companyName, this.projectName, this.stationNameEn, this.stationNameAr, this.latitude, this.longtude});

   factory GasStationDto.fromJson(Map<String, dynamic> json) => _$GasStationDtoFromJson(json);

   Map<String, dynamic> toJson() => _$GasStationDtoToJson(this);
}

