import '../../data/models/add_vehicle_zone_params.dart';
import '../../data/models/vehicle_zone_dto.dart';

class VehicleZone {
  int? id;
  String? name;
  int? expectedHours;
  int? expectedMinutes;
  int? companyId;
  String? companyName;
  int? projectId;
  String? projectName;
  int? shiftId;
  String? shiftName;
  int? vehicleId;
  String? plateNumber;
  List<VehicleZoneLatLng>? latlngs;

  VehicleZone(
      {this.id,
      this.name,
      this.expectedHours,
      this.expectedMinutes,
      this.companyId,
      this.companyName,
      this.projectId,
      this.projectName,
      this.shiftId,
      this.shiftName,
      this.vehicleId,
      this.plateNumber,
      this.latlngs});

  factory VehicleZone.fromJson(VehicleZoneDto json) => VehicleZone(
        id: json.id,
        name: json.name,
        expectedHours: json.expectedHours,
        expectedMinutes: json.expectedMinutes,
        companyId: json.companyId,
        companyName: json.companyName,
        projectId: json.projectId,
        projectName: json.projectName,
        shiftId: json.shiftId,
        shiftName: json.shiftName,
        vehicleId: json.vehicleId,
        plateNumber: json.plateNumber,
        latlngs: json.latlngs,
      );

  static List<VehicleZone> fromListDto(List<VehicleZoneDto> data) {
    return data.map((e) => VehicleZone.fromJson(e)).toList();
  }
}
