
import '../../data/models/punishment_type_dto.dart';

class PunishmentType {
  int? id;
  String? name;

  PunishmentType({this.id, this.name});

   factory PunishmentType.fromDto(PunishmentTypeDto json){
      return PunishmentType(
        id: json.id,
        name: json.name,
      );
   }
}

