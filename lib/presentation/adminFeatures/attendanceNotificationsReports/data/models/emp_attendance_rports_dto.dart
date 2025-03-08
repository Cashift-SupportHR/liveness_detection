import 'package:json_annotation/json_annotation.dart'; 

part 'emp_attendance_rports_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class EmpAttendanceRportsDto {
  @JsonKey(name: 'scheduleEmpAttendanceList')
  List<ScheduleEmpAttendanceListDto>? scheduleEmpAttendanceList;
  @JsonKey(name: 'totalScheduleEmpAttendance')
  int? totalScheduleEmpAttendance;
  @JsonKey(name: 'totalContractualNumber')
  int? totalContractualNumber;

  EmpAttendanceRportsDto({this.scheduleEmpAttendanceList, this.totalScheduleEmpAttendance, this.totalContractualNumber});

   factory EmpAttendanceRportsDto.fromJson(Map<String, dynamic> json) => _$EmpAttendanceRportsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$EmpAttendanceRportsDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class ScheduleEmpAttendanceListDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'freelancerId')
  int? freelancerId;
  @JsonKey(name: 'lastAttendanceId')
  int? lastAttendanceId;
  @JsonKey(name: 'shiftName')
  String? shiftName;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'freelancerName')
  String? freelancerName;
  @JsonKey(name: 'empStartShiftDate')
  String? empStartShiftDate;
  @JsonKey(name: 'empEndShiftDate')
  String? empEndShiftDate;
  @JsonKey(name: 'workHoursNumber')
  int? workHoursNumber;
  @JsonKey(name: 'employeeStatusId')
  int? employeeStatusId;
  @JsonKey(name: 'employeeStatusName')
  String? employeeStatusName;
  @JsonKey(name: 'attendanceStatus')
  String? attendanceStatus;

  ScheduleEmpAttendanceListDto({this.id, this.shiftId, this.projectId, this.freelancerId, this.lastAttendanceId, this.shiftName, this.projectName, this.freelancerName, this.empStartShiftDate, this.empEndShiftDate, this.workHoursNumber, this.employeeStatusId, this.employeeStatusName, this.attendanceStatus});

   factory ScheduleEmpAttendanceListDto.fromJson(Map<String, dynamic> json) => _$ScheduleEmpAttendanceListDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ScheduleEmpAttendanceListDtoToJson(this);
}

