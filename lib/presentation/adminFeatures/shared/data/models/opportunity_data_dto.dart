import 'package:json_annotation/json_annotation.dart';

import '../../../addOpportunity/data/models/calc_opportunity_dto.dart';
import '../../../addOpportunity/data/models/shift_dto.dart';

part 'opportunity_data_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class OpportunityDataDto {
  @JsonKey(name: 'data')
  List<OpportunityDto>? data;
  @JsonKey(name: 'totalData')
  int? totalData;
  @JsonKey(name: 'navItem')
  List<NavItemDto>? navItem;

  OpportunityDataDto({this.data, this.totalData, this.navItem});

  factory OpportunityDataDto.fromJson(Map<String, dynamic> json) => _$OpportunityDataDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OpportunityDataDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class OpportunityDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'logoPath')
  String? logoPath;
  @JsonKey(name: 'qualification')
  String? qualification;
  @JsonKey(name: 'gender')
  String? gender;
  @JsonKey(name: 'contractId')
  int? contractId;
  @JsonKey(name: 'contractConditionsId')
  int? contractConditionsId;
  @JsonKey(name: 'contractConditionsName')
  String? contractConditionsName;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'startShiftTime')
  String? startShiftTime;
  @JsonKey(name: 'hoursCount')
  int? hoursCount;
  @JsonKey(name: 'opportunitiesStrartTimeName')
  String? opportunitiesStrartTimeName;
  @JsonKey(name: 'opportunitiesEndTimeName')
  String? opportunitiesEndTimeName;
  @JsonKey(name: 'workingData')
  String? workingData;
  @JsonKey(name: 'requiredCount')
  int? requiredCount;
  @JsonKey(name: 'lastRequiredCount')
  int? lastRequiredCount;
  @JsonKey(name: 'workingDateString')
  String? workingDateString;
  @JsonKey(name: 'actualNumber')
  int? actualNumber;
  @JsonKey(name: 'isApprove')
  bool? isApprove;
  @JsonKey(name: 'autoApprove')
  bool? autoApprove;
  @JsonKey(name: 'latitude')
  String? latitude;
  @JsonKey(name: 'longtude')
  String? longtude;
  @JsonKey(name: 'shift')
  ListShiftDto? shift;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'calcId')
  int? calcId;
  @JsonKey(name: 'startAllowMinutes')
  int? startAllowMinutes;
  @JsonKey(name: 'salary')
  double? salary;
  @JsonKey(name: 'endAllowMinutes')
  int? endAllowMinutes;
  @JsonKey(name: 'isAllowEditPrice')
  bool? isAllowEditPrice;
  @JsonKey(name: 'isAllowEditTime')
  bool? isAllowEditTime;
  @JsonKey(name: 'userId')
  int? userId;
  @JsonKey(name: 'startShiftDate')
  String? startShiftDate;
  @JsonKey(name: 'workingDateTime')
  String? workingDateTime;
  @JsonKey(name: 'endWorkingDateTime')
  String? endWorkingDateTime;
  @JsonKey(name: 'endShiftDate')
  String? endShiftDate;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'reserveNumber')
  int? reserveNumber;
  @JsonKey(name: 'numberAccepted')
  int? numberAccepted;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'workingStartDate')
  String? workingStartDate;
  @JsonKey(name: 'workingEndDate')
  String? workingEndDate;
  @JsonKey(name: 'calcOpp')
  ListCalcOppDto? calcOpp;
  @JsonKey(name: 'address')
  String? address;
  @JsonKey(name: 'jobName')
  String? jobName;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'jobId')
  int? jobId;
  @JsonKey(name: 'freelanceApplyCounter')
  final List<FreelanceApplyCounterDto>? freelanceApplyCounter;
  @JsonKey(name: 'isAcceptAllEmployeeByApprovalLevel')
  int? isAcceptAllEmployeeByApprovalLevel;
  @JsonKey(name: 'completeFreeLanceInfoByCompanyAprovelLevelId')
  int? completeFreeLanceInfoByCompanyAprovelLevelId;
  @JsonKey(name: 'attendanceTypeId')
  int? attendanceTypeId;
  @JsonKey(name: 'freeLancerIds')
  List<int>? freeLancerIds;

  OpportunityDto(
      {this.id,
      this.freelanceApplyCounter,
      this.logoPath,
      this.projectName,
      this.qualification,
      this.gender,
      this.contractId,
      this.contractConditionsId,
      this.contractConditionsName,
      this.companyId,
      this.companyName,
      this.startShiftTime,
      this.hoursCount,
      this.opportunitiesStrartTimeName,
      this.opportunitiesEndTimeName,
      this.workingData,
      this.requiredCount,
      this.lastRequiredCount,
      this.workingDateString,
      this.actualNumber,
      this.isApprove,
      this.autoApprove,
      this.latitude,
      this.longtude,
      this.shift,
      this.shiftId,
      this.calcId,
      this.startAllowMinutes,
      this.salary,
      this.endAllowMinutes,
      this.isAllowEditPrice,
      this.isAllowEditTime,
      this.userId,
      this.startShiftDate,
      this.workingDateTime,
      this.endWorkingDateTime,
      this.endShiftDate,
      this.description,
      this.reserveNumber,
      this.numberAccepted,
      this.projectId,
      this.workingStartDate,
      this.workingEndDate,
      this.calcOpp,
      this.address,
      this.jobName,
      this.jobId,
        this.isAcceptAllEmployeeByApprovalLevel, this.completeFreeLanceInfoByCompanyAprovelLevelId, this.attendanceTypeId, this.freeLancerIds});

  factory OpportunityDto.fromJson(Map<String, dynamic> json) => _$OpportunityDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OpportunityDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class FreelanceApplyCounterDto {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'count')
  final int? count;

  FreelanceApplyCounterDto({this.name, this.count});

  factory FreelanceApplyCounterDto.fromJson(Map<String, dynamic> json) => _$FreelanceApplyCounterDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FreelanceApplyCounterDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class NavItemDto {
  @JsonKey(name: 'categoryName')
  final String? categoryName;
  @JsonKey(name: 'navName')
  final String? navName;
  @JsonKey(name: 'navCode')
  final String? navCode;

  NavItemDto({this.categoryName, this.navCode, this.navName});

  factory NavItemDto.fromJson(Map<String, dynamic> json) => _$NavItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NavItemDtoToJson(this);
}
