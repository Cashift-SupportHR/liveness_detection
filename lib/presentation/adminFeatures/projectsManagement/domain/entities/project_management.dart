import '../../data/models/project_management_dto.dart';

class ProjectManagement {
  int? id;
  int? companyId;
  String? projectCode;
  String? nameEn;
  String? nameAr;
  String? cityName;
  String? addressName;
  String? typeAttendance;

  ProjectManagement({this.id, this.projectCode, this.companyId, this.nameEn, this.nameAr, this.cityName, this.addressName, this.typeAttendance});

  factory ProjectManagement.fromDto(ProjectManagementDto json) {
    return ProjectManagement(
      id: json.id,
      projectCode: json.projectCode,
      companyId: json.companyId,
      nameEn: json.nameEn,
      nameAr: json.nameAr,
      cityName: json.cityName,
      addressName: json.addressName,
      typeAttendance: json.typeAttendance,
    );
  }
}
