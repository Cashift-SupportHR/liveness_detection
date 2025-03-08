
import '../../data/models/arrival_departure_type_dto.dart';

class ArrivalDepartureType {
  int? id;
  String? name;
  String? code;
  String? description;
  String? icon;

  ArrivalDepartureType({this.id, this.name, this.code, this.description, this.icon});

   factory ArrivalDepartureType.fromDto(ArrivalDepartureTypeDto json) {
    return ArrivalDepartureType(
      id: json.id,
      name: json.name,
      code: json.code,
      description: json.description,
      icon: json.icon,
    );
   }
}

