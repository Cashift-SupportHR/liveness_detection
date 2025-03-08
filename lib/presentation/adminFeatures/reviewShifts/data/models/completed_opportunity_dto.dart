import 'package:json_annotation/json_annotation.dart'; 

part 'completed_opportunity_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class CompletedOpportunityDto {
  @JsonKey(name: 'id')
  final  int? id;
  @JsonKey(name: 'typeOpportunty')
  final  String? typeOpportunty;
  @JsonKey(name: 'typeOfOpportunty')
  final  int? typeOfOpportunty;
  @JsonKey(name: 'freelanceName')
  final  String? freelanceName;
  @JsonKey(name: 'idNumber')
  final  String? idNumber;
  @JsonKey(name: 'phoneNumber')
  final  String? phoneNumber;
  @JsonKey(name: 'status')
  final  String? status;
  @JsonKey(name: 'statusId')
  final  int? statusId;
  @JsonKey(name: 'workingDate')
  final  String? workingDate;
  @JsonKey(name: 'startShiftDate')
  final  String? startShiftDate;
  @JsonKey(name: 'endShiftDate')
  final  String? endShiftDate;
  @JsonKey(name: 'workingDateTime')
  final  String? workingDateTime;
  @JsonKey(name: 'endWorkingDateTime')
  final  String? endWorkingDateTime;
  @JsonKey(name: 'workingStartDate')
  final  String? workingStartDate;
  @JsonKey(name: 'workingEndDate')
  final  String? workingEndDate;
  @JsonKey(name: 'jobName')
  final  String? jobName;
  @JsonKey(name: 'projectName')
  final  String? projectName;
  @JsonKey(name: 'address')
  final  String? address;
  @JsonKey(name: 'cityName')
  final  String? cityName;
  @JsonKey(name: 'description')
  final  String? description;
  @JsonKey(name: 'endAllowMinutes')
  final  int? endAllowMinutes;
  @JsonKey(name: 'startShiftTime')
  final  String? startShiftTime;
  @JsonKey(name: 'oppId')
  final  int? oppId;
  @JsonKey(name: 'isAllowUpdateStatus')
  final  bool? isAllowUpdateStatus;

  CompletedOpportunityDto({this.id, this.typeOpportunty, this.isAllowUpdateStatus, this.typeOfOpportunty, this.freelanceName, this.idNumber, this.phoneNumber, this.status, this.statusId, this.workingDate, this.startShiftDate, this.endShiftDate, this.workingDateTime, this.endWorkingDateTime, this.workingStartDate, this.workingEndDate, this.jobName, this.projectName, this.address, this.cityName, this.description, this.endAllowMinutes, this.startShiftTime, this.oppId});

   factory CompletedOpportunityDto.fromJson(Map<String, dynamic> json) => _$CompletedOpportunityDtoFromJson(json);

   Map<String, dynamic> toJson() => _$CompletedOpportunityDtoToJson(this);


   bool isOvertime()=> typeOfOpportunty ==2 ;
}
