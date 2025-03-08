
import '../../data/models/covenant_vehicle_dto.dart';

class CovenantVehicle {
  int? id;
  String? name;
  String? description;
  String? custodyImage;
  String? custodyImagePath;
  int? vehicleId;

  CovenantVehicle({this.id, this.name, this.description, this.custodyImage, this.custodyImagePath, this.vehicleId});

   factory CovenantVehicle.fromJson(CovenantVehicleDto json) => CovenantVehicle(
        id: json.id,
        name: json.name,
        description: json.description,
        custodyImage: json.custodyImage,
        custodyImagePath: json.custodyImagePath,
        vehicleId: json.vehicleId,
    );

   static List<CovenantVehicle> fromJsonList(List<CovenantVehicleDto> json) {
     return json.map((e) => CovenantVehicle.fromJson(e)).toList();
   }
}

