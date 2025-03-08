import 'package:json_annotation/json_annotation.dart'; 

part 'update_attendance_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class UpdateAttendanceParams {
  @JsonKey(name: 'attendaceStatus')
  String? attendaceStatus;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'oppId')
  int? oppId;
  @JsonKey(name: 'statusId')
  int? statusId;
  @JsonKey(name: 'startTime')
  String? startTime;
  @JsonKey(name: 'endTime')
  String? endTime;

  UpdateAttendanceParams({this.attendaceStatus, this.id, this.oppId, this.statusId, this.startTime, this.endTime});

   factory UpdateAttendanceParams.fromJson(Map<String, dynamic> json) => _$UpdateAttendanceParamsFromJson(json);

   Map<String, dynamic> toJson() => _$UpdateAttendanceParamsToJson(this);
}

