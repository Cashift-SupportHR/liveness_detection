import '../../../../presentationUser/workHazards/data/models/index.dart';
import '../../data/models/general_violation_dto.dart';

class GeneralViolation {

  int? employeeId;
  String? employeeName;
  String? phone;
  int? id;
  num? violationAmount;
  int? projectId;
  String? projectName;
  int? companyId;
  String? companyName;
  int? shiftId;
  String? shiftName;
  int? scheduleViolationId;
  String? scheduleViolationName;
  int? scheduleEmployeeWorkId;
  List<WorkHazardImageDto>? images;

  GeneralViolation(
      {this.employeeId,
        this.employeeName,
        this.phone,
        this.id,
        this.violationAmount,
        this.projectId,
        this.projectName,
        this.companyId,
        this.companyName,
        this.shiftId,
        this.shiftName,
        this.scheduleViolationId,
        this.scheduleViolationName,
        this.scheduleEmployeeWorkId,
        this.images,
      });

  factory GeneralViolation.fromDto(GeneralViolationDto json) =>
      GeneralViolation(
          employeeId: json.employeeId,
          employeeName: json.employeeName,
          phone: json.phone,
          id: json.id,
          violationAmount: json.violationAmount,
          projectId: json.projectId,
          projectName: json.projectName,
          companyId: json.companyId,
          companyName: json.companyName,
          shiftId: json.shiftId,
          shiftName: json.shiftName,
          scheduleViolationId: json.scheduleViolationId,
          scheduleViolationName: json.scheduleViolationName,
          scheduleEmployeeWorkId: json.scheduleEmployeeWorkId,
          images: json.images,
       );

  static List<GeneralViolation> fromListDto(List<GeneralViolationDto> json) {
    return json.map((e) => GeneralViolation.fromDto(e)).toList();
  }

  List<String> get imagesUrls => images?.map((e) => e.path ?? '').toList() ?? [];
}
