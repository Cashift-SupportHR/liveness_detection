import 'package:json_annotation/json_annotation.dart'; 

part 'add_focus_attendance_time_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class AddFocusAttendanceTimeParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'focusPointId')
  int? focusPointId;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'attendanceTypeId')
  int? attendanceTypeId;
  @JsonKey(name: 'requredCount')
  int? requredCount;
  @JsonKey(name: 'startTime')
  String? startTime;
  @JsonKey(name: 'endTime')
  String? endTime;

  AddFocusAttendanceTimeParams({this.id, this.focusPointId, this.shiftId, this.attendanceTypeId, this.requredCount, this.startTime, this.endTime});

   factory AddFocusAttendanceTimeParams.fromJson(Map<String, dynamic> json) => _$AddFocusAttendanceTimeParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddFocusAttendanceTimeParamsToJson(this);
}


