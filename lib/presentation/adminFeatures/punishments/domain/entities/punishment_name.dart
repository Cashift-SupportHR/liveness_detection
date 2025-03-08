
import '../../data/models/punishment_name_dto.dart';

class PunishmentName {
  int? id;
  String? name;

  PunishmentName({this.id, this.name});

  factory PunishmentName.fromDto(PunishmentNameDto json){
    return PunishmentName(
      id: json.id,
      name: json.name,
    );
  }
}


