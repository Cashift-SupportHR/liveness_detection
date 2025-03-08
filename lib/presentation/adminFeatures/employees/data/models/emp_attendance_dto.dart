import 'package:json_annotation/json_annotation.dart'; 

part 'emp_attendance_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class EmpAttendanceDto {
  @JsonKey(name: 'scheduleEmpWorkId')
  int? scheduleEmpWorkId;
  @JsonKey(name: 'scheduleEmpWorkName')
  String? scheduleEmpWorkName;
  @JsonKey(name: 'scheduleEmpWorkPhoneNumber')
  String? scheduleEmpWorkPhoneNumber;
  @JsonKey(name: 'scheduleEmpWorkProfileIamge')
  String? scheduleEmpWorkProfileIamge;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'shiftName')
  String? shiftName;
  @JsonKey(name: 'paymentPeriodTypeId')
  int? paymentPeriodTypeId;
  @JsonKey(name: 'paymentPeriodTypeName')
  String? paymentPeriodTypeName;
  @JsonKey(name: 'transactionsList')
  List<TransactionsListDto>? transactionsList;

  EmpAttendanceDto({this.scheduleEmpWorkId, this.scheduleEmpWorkName, this.scheduleEmpWorkPhoneNumber, this.scheduleEmpWorkProfileIamge, this.status, this.projectId, this.projectName, this.shiftId, this.shiftName, this.paymentPeriodTypeId, this.paymentPeriodTypeName, this.transactionsList});

   factory EmpAttendanceDto.fromJson(Map<String, dynamic> json) => _$EmpAttendanceDtoFromJson(json);

   Map<String, dynamic> toJson() => _$EmpAttendanceDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class TransactionsListDto {
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'shiftName')
  String? shiftName;
  @JsonKey(name: 'vactionType')
  String? vactionType;
  @JsonKey(name: 'fullDates')
  String? fullDates;
  @JsonKey(name: 'checkIn')
  String? checkIn;
  @JsonKey(name: 'checkOut')
  String? checkOut;

  TransactionsListDto({this.vactionType, this.projectName, this.shiftName, this.fullDates, this.checkIn, this.checkOut});

   factory TransactionsListDto.fromJson(Map<String, dynamic> json) => _$TransactionsListDtoFromJson(json);

   Map<String, dynamic> toJson() => _$TransactionsListDtoToJson(this);
}

