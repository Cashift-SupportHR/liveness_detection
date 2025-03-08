
import '../../data/models/punishment_dto.dart';

class Punishment {
  int? id;
  String? companyName;
  String? violationTypeName;
  String? typesOfViolationName;
  double? amountViolation;
  int? totalViolationDays;
  String? logo;
  int? typesOfViolation;

  Punishment({this.id, this.companyName, this.violationTypeName, this.typesOfViolationName, this.amountViolation, this.totalViolationDays, this.logo, this.typesOfViolation});

   factory Punishment.fromDto(PunishmentDto json){
     return Punishment(
       id: json.id,
       companyName: json.companyName,
       violationTypeName: json.violationTypeName,
       typesOfViolationName: json.typesOfViolationName,
       amountViolation: json.amountViolation,
       totalViolationDays: json.totalViolationDays,
       logo: json.logo,
        typesOfViolation: json.typesOfViolation,
     );
   }
}

