import 'package:json_annotation/json_annotation.dart'; 

part 'add_opportunity_params.g.dart';
@JsonSerializable(ignoreUnannotated: false)
class AddOpportunityParams {
  @JsonKey(name: 'id')
  final  int? id;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'contractConditionsId')
  int? contractConditionsId;
  @JsonKey(name: 'jobId')
  int? jobId;
  @JsonKey(name: 'workingData')
  dynamic workingData;
  @JsonKey(name: 'requiredCount')
  int? requiredCount;
  @JsonKey(name: 'autoApprove')
  bool? autoApprove;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'reserveNumber')
  int? reserveNumber;
  @JsonKey(name: 'startAllowMinutes')
  int? startAllowMinutes;
  @JsonKey(name: 'endAllowMinutes')
  int? endAllowMinutes;
  @JsonKey(name: 'isAllowEditTime')
  bool? isAllowEditTime;
  @JsonKey(name: 'calcOppId')
  int? calcOppId;
  @JsonKey(name: 'startShiftTime')
  String? startShiftTime;
  @JsonKey(name: 'hoursCount')
  int? hoursCount;
  @JsonKey(name: 'isAllowEditPrice')
  bool? isAllowEditPrice;
  @JsonKey(name: 'salary')
  double? salary;
  @JsonKey(name: 'isAcceptAllEmployeeByApprovalLevel')
  int? isAcceptAllEmployeeByApprovalLevel;
  @JsonKey(name: 'completeFreeLanceInfoByCompanyAprovelLevelId')
  int? completeFreeLanceInfoByCompanyAprovelLevelId;
  @JsonKey(name: 'attendanceTypeId')
  int? attendanceTypeId;
  @JsonKey(name: 'freeLancerIds')
  List<int>? freeLancerIds;

  AddOpportunityParams({this.id, this.description, this.contractConditionsId, this.jobId, this.workingData, this.requiredCount, this.autoApprove, this.shiftId, this.reserveNumber, this.startAllowMinutes, this.endAllowMinutes, this.isAllowEditTime, this.calcOppId, this.startShiftTime, this.hoursCount, this.isAllowEditPrice, this.salary, this.isAcceptAllEmployeeByApprovalLevel, this.completeFreeLanceInfoByCompanyAprovelLevelId, this.attendanceTypeId, this.freeLancerIds});
   factory AddOpportunityParams.fromJson(Map<String, dynamic> json) => _$AddOpportunityParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddOpportunityParamsToJson(this);
}

