import 'package:json_annotation/json_annotation.dart'; 

part 'complet_opportunity_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class CompletOpportunityDto {
  @JsonKey(name: 'data')
  List<CompletedOpportunityData>? data;
  @JsonKey(name: 'pageNumber')
  int? pageNumber;
  @JsonKey(name: 'pageSize')
  int? pageSize;
  @JsonKey(name: 'totalRecords')
  int? totalRecords;
  @JsonKey(name: 'totalPages')
  int? totalPages;

  CompletOpportunityDto({this.data, this.pageNumber, this.pageSize, this.totalRecords, this.totalPages});

   factory CompletOpportunityDto.fromJson(Map<String, dynamic> json) => _$CompletOpportunityDtoFromJson(json);

   Map<String, dynamic> toJson() => _$CompletOpportunityDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class CompletedOpportunityData {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'typeOpportunty')
  String? typeOpportunty;
  @JsonKey(name: 'typeOfOpportunty')
  String? typeOfOpportunty;
  @JsonKey(name: 'freelanceId')
  int? freelanceId;
  @JsonKey(name: 'freelanceName')
  String? freelanceName;
  @JsonKey(name: 'idNumber')
  String? idNumber;
  @JsonKey(name: 'phoneNumber')
  String? phoneNumber;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'statusId')
  int? statusId;
  @JsonKey(name: 'workingDate')
  String? workingDate;
  @JsonKey(name: 'startShiftDate')
  String? startShiftDate;
  @JsonKey(name: 'endShiftDate')
  String? endShiftDate;
  @JsonKey(name: 'workingDateTime')
  String? workingDateTime;
  @JsonKey(name: 'endWorkingDateTime')
  String? endWorkingDateTime;
  @JsonKey(name: 'workingStartDate')
  String? workingStartDate;
  @JsonKey(name: 'workingEndDate')
  String? workingEndDate;
  @JsonKey(name: 'jobName')
  String? jobName;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'address')
  String? address;
  @JsonKey(name: 'cityName')
  String? cityName;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'endAllowMinutes')
  String? endAllowMinutes;
  @JsonKey(name: 'startShiftTime')
  String? startShiftTime;
  @JsonKey(name: 'oppId')
  int? oppId;
  @JsonKey(name: 'isAllowUpdateStatus')
  bool? isAllowUpdateStatus;
  @JsonKey(name: 'deservedAmount')
  num? deservedAmount;
  @JsonKey(name: 'totalDeductMoneyClearanceCertificate')
  num? totalDeductMoneyClearanceCertificate;
  @JsonKey(name: 'ammountViolations')
  num? ammountViolations;

  CompletedOpportunityData({this.id, this.shiftId, this.typeOpportunty, this.typeOfOpportunty, this.freelanceId, this.freelanceName, this.idNumber, this.phoneNumber, this.status, this.statusId, this.workingDate, this.startShiftDate, this.endShiftDate, this.workingDateTime, this.endWorkingDateTime, this.workingStartDate, this.workingEndDate, this.jobName, this.projectName, this.address, this.cityName, this.description, this.endAllowMinutes, this.startShiftTime, this.oppId, this.isAllowUpdateStatus, this.deservedAmount, this.totalDeductMoneyClearanceCertificate, this.ammountViolations});

   factory CompletedOpportunityData.fromJson(Map<String, dynamic> json) => _$CompletedOpportunityDataFromJson(json);

   Map<String, dynamic> toJson() => _$CompletedOpportunityDataToJson(this);
  bool isOvertime()=> typeOfOpportunty ==2 ;
}

