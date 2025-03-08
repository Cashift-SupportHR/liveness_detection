import '../../data/models/emp_attendance_rports_dto.dart';
import 'ScheduleEmpAttendanceList.dart';

class EmpAttendanceRports {
  EmpAttendanceRports({
    this.scheduleEmpAttendanceList,
    this.totalScheduleEmpAttendance,
    this.totalContractualNumber,
  });

  List<ScheduleEmpAttendanceList>? scheduleEmpAttendanceList;
  int? totalScheduleEmpAttendance;
  int? totalContractualNumber;

  factory EmpAttendanceRports.fromDto(EmpAttendanceRportsDto json) {
    return EmpAttendanceRports(
      scheduleEmpAttendanceList: json.scheduleEmpAttendanceList
          ?.map((e) => ScheduleEmpAttendanceList.fromDto(e))
          .toList(),
      totalScheduleEmpAttendance: json.totalScheduleEmpAttendance,
      totalContractualNumber: json.totalContractualNumber,
    );
  }
}
