import 'package:shiftapp/presentation/adminFeatures/gasStations/data/models/gas_station_dto.dart';

class GasStation {
  GasStation({
      this.id, 
      this.companyName, 
      this.projectName, 
      this.stationNameEn, 
      this.stationNameAr, 
      this.latitude, 
      this.companyId,
      this.projectId,
      this.longtude,});


  int? id;
  int? projectId;
  int? companyId;
  String? companyName;
  String? projectName;
  String? stationNameEn;
  String? stationNameAr;
  num? latitude;
  num? longtude;

  factory GasStation.fromDto(GasStationDto json) {
    return GasStation(
      id: json.id,
      companyName: json.companyName,
      projectName: json.projectName,
      stationNameEn: json.stationNameEn,
      stationNameAr: json.stationNameAr,
      latitude: json.latitude,
      longtude: json.longtude,
      companyId: json.companyId,
      projectId: json.projectId,
    );
  }

}