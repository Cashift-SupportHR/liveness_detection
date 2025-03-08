import 'package:json_annotation/json_annotation.dart';

part 'opportunity_details_dto.g.dart';
@JsonSerializable(ignoreUnannotated: false)
class OpportunityDetailsDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'companyLogo')
  String? companyLogo;
  @JsonKey(name: 'jobName')
  String? jobName;
  @JsonKey(name: 'workingHours')
  int? workingHours;
  @JsonKey(name: 'startShiftDate')
  String? startShiftDate;
  @JsonKey(name: 'endShiftDate')
  String? endShiftDate;
  @JsonKey(name: 'requiredCount')
  int? requiredCount;
  @JsonKey(name: 'actualNumber')
  int? actualNumber;
  @JsonKey(name: 'salaries')
  double? salaries;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'registerAttendance')
  String? registerAttendance;
  @JsonKey(name: 'addedDate')
  String? addedDate;
  @JsonKey(name: 'timeJob')
  String? timeJob;
  @JsonKey(name: 'conditions')
  List<String>? conditions;
  @JsonKey(name: 'listApply')
  List<MenuEmployeesDto>? menuEmployees;

  OpportunityDetailsDto({this.id, this.companyName, this.companyLogo, this.jobName, this.workingHours, this.startShiftDate, this.endShiftDate, this.requiredCount, this.actualNumber, this.salaries, this.description, this.projectName, this.registerAttendance, this.addedDate, this.timeJob, this.conditions, this.menuEmployees});

   factory OpportunityDetailsDto.fromJson(Map<String, dynamic> json) => _$OpportunityDetailsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$OpportunityDetailsDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class MenuEmployeesDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'employeeName')
  String? employeeName;
  @JsonKey(name: 'qualification')
  String? qualification;
  @JsonKey(name: 'cityName')
  String? cityName;
  @JsonKey(name: 'idNumber')
  String? idNumber;
  @JsonKey(name: 'phoneNumber')
  String? phoneNumber;
  @JsonKey(name: 'statusName')
  String? statusName;
  @JsonKey(name: 'status')
  int? status;

  MenuEmployeesDto({this.id, this.employeeName, this.qualification, this.cityName, this.idNumber, this.phoneNumber, this.statusName, this.status});

   factory MenuEmployeesDto.fromJson(Map<String, dynamic> json) => _$MenuEmployeesDtoFromJson(json);

   Map<String, dynamic> toJson() => _$MenuEmployeesDtoToJson(this);
}

