

import '../../data/models/emp_attendance_rports_dto.dart';

class ScheduleEmpAttendanceList {
  ScheduleEmpAttendanceList({
      this.id, 
      this.shiftId, 
      this.projectId, 
      this.freelancerId, 
      this.lastAttendanceId, 
      this.shiftName, 
      this.projectName, 
      this.freelancerName, 
      this.empStartShiftDate, 
      this.empEndShiftDate, 
      this.workHoursNumber, 
      this.employeeStatusId, 
      this.employeeStatusName, 
      this.attendanceStatus,});


  int? id;
  int? shiftId;
  int? projectId;
  int? freelancerId;
  int? lastAttendanceId;
  String? shiftName;
  String? projectName;
  String? freelancerName;
  String? empStartShiftDate;
  String? empEndShiftDate;
  int? workHoursNumber;
  int? employeeStatusId;
  String? employeeStatusName;
  String? attendanceStatus;

  factory ScheduleEmpAttendanceList.fromDto(ScheduleEmpAttendanceListDto json) {
    return ScheduleEmpAttendanceList(
      shiftName: json.shiftName,
      shiftId: json.shiftId,
      projectName: json.projectName,
      freelancerName: json.freelancerName,
      empStartShiftDate: json.empStartShiftDate,
      workHoursNumber: json.workHoursNumber,
      empEndShiftDate: json.empEndShiftDate,
      employeeStatusId: json.employeeStatusId,
      employeeStatusName: json.employeeStatusName,
      attendanceStatus: json.attendanceStatus,
      id: json.id,
      projectId: json.projectId,
      freelancerId: json.freelancerId,
      lastAttendanceId: json.lastAttendanceId,

    );
  }

}