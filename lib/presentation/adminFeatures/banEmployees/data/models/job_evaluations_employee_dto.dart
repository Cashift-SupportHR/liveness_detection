import 'package:json_annotation/json_annotation.dart'; 

part 'job_evaluations_employee_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class JobEvaluationsEmployeeDto {
  @JsonKey(name: 'nameAr')
  String? nameAr;
  @JsonKey(name: 'evalkey')
  int? evalkey;
  @JsonKey(name: 'val')
  int? val;
  @JsonKey(name: 'evaluationCount')
  int? evaluationCount;
  @JsonKey(name: 'evaluationName')
  String? evaluationName;
  @JsonKey(name: 'totalWorkHours')
  String? totalWorkHours;
  @JsonKey(name: 'percentage')
  double? percentage;
  @JsonKey(name: 'date')
  String? date;

  JobEvaluationsEmployeeDto({this.nameAr, this.evalkey, this.val, this.evaluationCount, this.evaluationName, this.totalWorkHours, this.percentage, this.date});

   factory JobEvaluationsEmployeeDto.fromJson(Map<String, dynamic> json) => _$JobEvaluationsEmployeeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$JobEvaluationsEmployeeDtoToJson(this);
}

