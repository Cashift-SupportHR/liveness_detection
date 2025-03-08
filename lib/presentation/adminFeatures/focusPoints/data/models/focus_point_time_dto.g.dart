// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'focus_point_time_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FocusPointTimeDto _$FocusPointTimeDtoFromJson(Map<String, dynamic> json) =>
    FocusPointTimeDto(
      shiftId: json['shiftId'] as int?,
      shiftName: json['shiftName'] as String?,
      attendance: (json['attendance'] as List<dynamic>?)
          ?.map((e) => PointAttendanceTime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FocusPointTimeDtoToJson(FocusPointTimeDto instance) =>
    <String, dynamic>{
      'shiftId': instance.shiftId,
      'shiftName': instance.shiftName,
      'attendance': instance.attendance,
    };

PointAttendanceTime _$PointAttendanceTimeFromJson(Map<String, dynamic> json) =>
    PointAttendanceTime(
      id: json['id'] as int?,
      focusPointId: json['focusPointId'] as int?,
      shiftId: json['shiftId'] as int?,
      attendanceTypeId: json['focusPointsAttendanceTypeId'] as int?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
    );

Map<String, dynamic> _$PointAttendanceTimeToJson(
        PointAttendanceTime instance) =>
    <String, dynamic>{
      'id': instance.id,
      'focusPointId': instance.focusPointId,
      'shiftId': instance.shiftId,
      'focusPointsAttendanceTypeId': instance.attendanceTypeId,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
