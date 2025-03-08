import 'package:json_annotation/json_annotation.dart';

part 'add_attendance_notifications_prams.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class AddAttendanceNotificationsPrams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'attendanceNotifiTypeId')
  int? attendanceNotifiTypeId;
  @JsonKey(name: 'discription')
  String? discription;
  @JsonKey(name: 'attNotifiFrom')
  String? attNotifiFrom;
  @JsonKey(name: 'attNotifiTo')
  String? attNotifiTo;
  @JsonKey(name: 'reuestDate')
  String? reuestDate;

  AddAttendanceNotificationsPrams(
      {this.id,
      this.attendanceNotifiTypeId,
      this.discription,
      this.attNotifiFrom,
      this.attNotifiTo,
      this.reuestDate});

  factory AddAttendanceNotificationsPrams.fromJson(Map<String, dynamic> json) =>
      _$AddAttendanceNotificationsPramsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AddAttendanceNotificationsPramsToJson(this);
}
