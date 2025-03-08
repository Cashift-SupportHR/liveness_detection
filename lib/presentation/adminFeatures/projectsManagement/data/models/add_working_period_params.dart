import 'package:json_annotation/json_annotation.dart';

part 'add_working_period_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class AddWorkingPeriodParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'jobId')
  int? jobId;
  @JsonKey(name: 'jobName')
  String? jobName;
  @JsonKey(name: 'shiftHeadId')
  int? shiftHeadId;
  @JsonKey(name: 'shiftHeadName')
  String? shiftHeadName;
  @JsonKey(name: 'shiftEn')
  String? shiftEn;
  @JsonKey(name: 'shiftAr')
  String? shiftAr;
  @JsonKey(name: 'hoursCount')
  int? hoursCount;
  @JsonKey(name: 'startTime')
  String? startTime;
  @JsonKey(name: 'contractualNumber')
  int? contractualNumber;

  AddWorkingPeriodParams({this.id, this.projectId, this.jobId, this.jobName, this.shiftHeadId, this.shiftHeadName, this.shiftEn, this.shiftAr, this.hoursCount, this.startTime, this.companyId, this.contractualNumber});

  factory AddWorkingPeriodParams.fromJson(Map<String, dynamic> json) => _$AddWorkingPeriodParamsFromJson(json);

  Map<String, dynamic> toJson() => _$AddWorkingPeriodParamsToJson(this);
}
