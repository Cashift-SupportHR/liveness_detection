
import '../../data/models/violation_type_dto.dart';

class ViolationType {
  int? id;
  String? nameEn;
  String? nameAr;
  num? violationAmount;
  int? projectId;
  String? projectName;
  int? companyId;
  String? companyName;
  int? scheduleViolationsTypeId;
  String? scheduleViolationsTypeName;

  ViolationType({this.id, this.nameEn, this.nameAr, this.violationAmount, this.projectId, this.projectName, this.companyId, this.companyName, this.scheduleViolationsTypeId, this.scheduleViolationsTypeName});

   factory ViolationType.fromDto(ViolationTypeDto json) =>  ViolationType(
    id: json.id,
    nameEn: json.nameEn,
    nameAr: json.nameAr,
    violationAmount: json.violationAmount,
    projectId: json.projectId,
    projectName: json.projectName,
    companyId: json.companyId,
    companyName: json.companyName,
    scheduleViolationsTypeId: json.scheduleViolationsTypeId,
    scheduleViolationsTypeName: json.scheduleViolationsTypeName,
  );

   static List<ViolationType> fromListDto(List<ViolationTypeDto> json) => json.map((e) => ViolationType.fromDto(e)).toList();
}

