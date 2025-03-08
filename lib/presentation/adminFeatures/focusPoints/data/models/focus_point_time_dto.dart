import 'package:json_annotation/json_annotation.dart'; 

part 'focus_point_time_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class FocusPointTimeDto {
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'shiftName')
  String? shiftName;
  @JsonKey(name: 'attendance')
  List<PointAttendanceTime>? attendance;

  FocusPointTimeDto({this.shiftId, this.shiftName, this.attendance});

   factory FocusPointTimeDto.fromJson(Map<String, dynamic> json) => _$FocusPointTimeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$FocusPointTimeDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class PointAttendanceTime {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'focusPointId')
  int? focusPointId;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'focusPointsAttendanceTypeId')
  int? attendanceTypeId;
  @JsonKey(name: 'startTime')
  String? startTime;
  @JsonKey(name: 'endTime')
  String? endTime;

  PointAttendanceTime({this.id, this.focusPointId, this.shiftId, this.attendanceTypeId, this.startTime, this.endTime});

   factory PointAttendanceTime.fromJson(Map<String, dynamic> json) => _$PointAttendanceTimeFromJson(json);

   Map<String, dynamic> toJson() => _$PointAttendanceTimeToJson(this);
}

