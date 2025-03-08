import 'package:json_annotation/json_annotation.dart'; 

part 'attendance_notifi_action_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AttendanceNotifiActionDto {
  @JsonKey(name: 'attendanceNotifiActionName')
  String? attendanceNotifiActionName;
  @JsonKey(name: 'attendanceNotifiTypeName')
  String? attendanceNotifiTypeName;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'attendanceNotifiActionId')
  int? attendanceNotifiActionId;
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

  AttendanceNotifiActionDto({this.attendanceNotifiActionName, this.attendanceNotifiTypeName, this.id, this.attendanceNotifiActionId, this.attendanceNotifiTypeId, this.discription, this.attNotifiFrom, this.attNotifiTo, this.reuestDate});

   factory AttendanceNotifiActionDto.fromJson(Map<String, dynamic> json) => _$AttendanceNotifiActionDtoFromJson(json);

   Map<String, dynamic> toJson() => _$AttendanceNotifiActionDtoToJson(this);
}

