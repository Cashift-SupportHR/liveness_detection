// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_notifi_action_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttendanceNotifiActionDto _$AttendanceNotifiActionDtoFromJson(
        Map<String, dynamic> json) =>
    AttendanceNotifiActionDto(
      attendanceNotifiActionName: json['attendanceNotifiActionName'] as String?,
      attendanceNotifiTypeName: json['attendanceNotifiTypeName'] as String?,
      id: json['id'] as int?,
      attendanceNotifiActionId: json['attendanceNotifiActionId'] as int?,
      attendanceNotifiTypeId: json['attendanceNotifiTypeId'] as int?,
      discription: json['discription'] as String?,
      attNotifiFrom: json['attNotifiFrom'] as String?,
      attNotifiTo: json['attNotifiTo'] as String?,
      reuestDate: json['reuestDate'] as String?,
    );

Map<String, dynamic> _$AttendanceNotifiActionDtoToJson(
        AttendanceNotifiActionDto instance) =>
    <String, dynamic>{
      'attendanceNotifiActionName': instance.attendanceNotifiActionName,
      'attendanceNotifiTypeName': instance.attendanceNotifiTypeName,
      'id': instance.id,
      'attendanceNotifiActionId': instance.attendanceNotifiActionId,
      'attendanceNotifiTypeId': instance.attendanceNotifiTypeId,
      'discription': instance.discription,
      'attNotifiFrom': instance.attNotifiFrom,
      'attNotifiTo': instance.attNotifiTo,
      'reuestDate': instance.reuestDate,
    };
