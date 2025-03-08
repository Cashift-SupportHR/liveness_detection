import 'package:injectable/injectable.dart';

import '../datasource/attendance_notifications_reports_provider.dart';
import '../models/emp_attendance_rports_dto.dart';
import '../models/emp_attendance_rports_prams.dart';




@injectable
class AttendanceNotificationsReportsRepository {
  final AttendanceNotificationsReportsAPI _api;

  AttendanceNotificationsReportsRepository(this._api);




  Future<EmpAttendanceRportsDto> fetchAttendanceNotificationsReports({required EmpAttendanceRportsPrams empAttendanceRportsPrams}) async {
    final response = await _api.fetchAttendanceNotificationsReports(empAttendanceRportsPrams);
    return response.payload!;
  }
}
