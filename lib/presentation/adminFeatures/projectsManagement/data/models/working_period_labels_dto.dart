import 'package:json_annotation/json_annotation.dart'; 

part 'working_period_labels_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class WorkingPeriodLabelsDto {
  @JsonKey(name: 'project')
  String? project;
  @JsonKey(name: 'hineProject')
  String? hineProject;
  @JsonKey(name: 'job')
  String? job;
  @JsonKey(name: 'hintJob')
  String? hintJob;
  @JsonKey(name: 'shiftHead')
  String? shiftHead;
  @JsonKey(name: 'hintShiftHead')
  String? hintShiftHead;
  @JsonKey(name: 'nameEn')
  String? nameEn;
  @JsonKey(name: 'hintNameEn')
  String? hintNameEn;
  @JsonKey(name: 'nameAr')
  String? nameAr;
  @JsonKey(name: 'hintNameAr')
  String? hintNameAr;
  @JsonKey(name: 'hoursCountShift')
  String? hoursCountShift;
  @JsonKey(name: 'hintHoursCountShift')
  String? hintHoursCountShift;
  @JsonKey(name: 'startTime')
  String? startTime;
  @JsonKey(name: 'hintStartTime')
  String? hintStartTime;
  @JsonKey(name: 'contractualName')
  String? contractualName;
  @JsonKey(name: 'hintContractualName')
  String? hintContractualName;

  WorkingPeriodLabelsDto({this.project, this.hineProject, this.job, this.hintJob, this.shiftHead, this.hintShiftHead, this.nameEn, this.hintNameEn, this.nameAr, this.hintNameAr, this.hoursCountShift, this.hintHoursCountShift, this.startTime, this.hintStartTime, this.contractualName, this.hintContractualName});

   factory WorkingPeriodLabelsDto.fromJson(Map<String, dynamic> json) => _$WorkingPeriodLabelsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$WorkingPeriodLabelsDtoToJson(this);
}

