// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_focus_attendance_time_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddFocusAttendanceTimeParams _$AddFocusAttendanceTimeParamsFromJson(
        Map<String, dynamic> json) =>
    AddFocusAttendanceTimeParams(
      id: json['id'] as int?,
      focusPointId: json['focusPointId'] as int?,
      shiftId: json['shiftId'] as int?,
      attendanceTypeId: json['attendanceTypeId'] as int?,
      requredCount: json['requredCount'] as int?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
    );

Map<String, dynamic> _$AddFocusAttendanceTimeParamsToJson(
        AddFocusAttendanceTimeParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'focusPointId': instance.focusPointId,
      'shiftId': instance.shiftId,
      'attendanceTypeId': instance.attendanceTypeId,
      'requredCount': instance.requredCount,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
