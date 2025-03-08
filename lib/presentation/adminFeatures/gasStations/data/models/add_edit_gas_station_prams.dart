import 'package:json_annotation/json_annotation.dart'; 

part 'add_edit_gas_station_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AddEditGasStationPrams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'stationNameEn')
  String? stationNameEn;
  @JsonKey(name: 'stationNameAr')
  String? stationNameAr;
  @JsonKey(name: 'latitude')
  num? latitude;
  @JsonKey(name: 'longtude')
  num? longtude;

  AddEditGasStationPrams({this.id, this.companyId, this.projectId, this.stationNameEn, this.stationNameAr, this.latitude, this.longtude});

   factory AddEditGasStationPrams.fromJson(Map<String, dynamic> json) => _$AddEditGasStationPramsFromJson(json);

   Map<String, dynamic> toJson() => _$AddEditGasStationPramsToJson(this);
}

