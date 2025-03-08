import '../../data/models/working_period_labels_dto.dart';

class WorkingPeriodLabels {
  String? project;
  String? hineProject;
  String? job;

  String? hintJob;
  String? shiftHead;
  String? hintShiftHead;
  String? nameEn;
  String? hintNameEn;
  String? nameAr;
  String? hintNameAr;
  String? hoursCountShift;
  String? hintHoursCountShift;
  String? startTime;
  String? hintStartTime;
  String? contractualName;
  String? hintContractualName;

  WorkingPeriodLabels(
      {this.project,
      this.hineProject,
      this.job,
      this.hintJob,
      this.shiftHead,
      this.hintShiftHead,
      this.nameEn,
      this.hintNameEn,
      this.nameAr,
      this.hintNameAr,
      this.hoursCountShift,
      this.hintHoursCountShift,
      this.startTime,
      this.hintStartTime,
      this.contractualName,
      this.hintContractualName,
      });

  factory WorkingPeriodLabels.fromDto(WorkingPeriodLabelsDto json) {
    return WorkingPeriodLabels(
      project: json.project,
      hineProject: json.hineProject,
      job: json.job,
      shiftHead: json.shiftHead,
      hintShiftHead: json.hintShiftHead,
      nameEn: json.nameEn,
      hintNameEn: json.hintNameEn,
      nameAr: json.nameAr,
      hintNameAr: json.hintNameAr,
      hoursCountShift: json.hoursCountShift,
      hintHoursCountShift: json.hintHoursCountShift,
      startTime: json.startTime,
      hintStartTime: json.hintStartTime,
      contractualName: json.contractualName,
      hintContractualName: json.hintContractualName,
    );
  }
}
