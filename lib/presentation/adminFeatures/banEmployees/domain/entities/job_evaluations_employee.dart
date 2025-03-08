import 'package:json_annotation/json_annotation.dart';

import '../../data/models/job_evaluations_employee_dto.dart';

class JobEvaluationsEmployee {
  String? nameAr;
  int? evalkey;
  int? val;
  int? evaluationCount;
  String? evaluationName;
  String? totalWorkHours;
  double? percentage;
  String? date;

  JobEvaluationsEmployee(
      {this.nameAr,
      this.evalkey,
      this.val,
      this.evaluationCount,
      this.evaluationName,
      this.totalWorkHours,
      this.percentage,
      this.date});

  factory JobEvaluationsEmployee.fromDto(JobEvaluationsEmployeeDto json) {
    return JobEvaluationsEmployee(
      nameAr: json.nameAr,
      evalkey: json.evalkey,
      val: json.val,
      evaluationCount: json.evaluationCount,
      evaluationName: json.evaluationName,
      totalWorkHours: json.totalWorkHours,
      percentage: json.percentage,
      date: json.date,
    );
  }
}
