
import '../../data/models/add_focus_attendance_time_params.dart';
import '../../data/models/focus_point_time_dto.dart';

class FocusPointTime {
  int? shiftId;
  String? shiftName;
  List<AddFocusAttendanceTimeParams>? attendance;

  FocusPointTime({this.shiftId, this.shiftName, this.attendance});

   factory FocusPointTime.fromJson(FocusPointTimeDto json) {
    return  FocusPointTime(
      shiftId: json.shiftId,
      shiftName: json.shiftName,
      attendance: json.attendance?.map((e) => AddFocusAttendanceTimeParams(
        id: e.id,
        focusPointId: e.focusPointId,
        attendanceTypeId: e.attendanceTypeId,
        shiftId: e.shiftId,
        endTime: e.endTime,
        startTime: e.startTime,
      )).toList(),
    );
   }
}

