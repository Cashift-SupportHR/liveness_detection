// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_attendance_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAttendanceParams _$UpdateAttendanceParamsFromJson(
        Map<String, dynamic> json) =>
    UpdateAttendanceParams(
      attendaceStatus: json['attendaceStatus'] as String?,
      id: json['id'] as int?,
      oppId: json['oppId'] as int?,
      statusId: json['statusId'] as int?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
    );

Map<String, dynamic> _$UpdateAttendanceParamsToJson(
        UpdateAttendanceParams instance) =>
    <String, dynamic>{
      'attendaceStatus': instance.attendaceStatus,
      'id': instance.id,
      'oppId': instance.oppId,
      'statusId': instance.statusId,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
