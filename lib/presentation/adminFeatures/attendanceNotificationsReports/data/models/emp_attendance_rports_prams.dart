import 'package:json_annotation/json_annotation.dart'; 

part 'emp_attendance_rports_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class EmpAttendanceRportsPrams {
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'startShiftDate')
  String? startShiftDate;
  @JsonKey(name: 'endShiftDate')
  String? endShiftDate;

  EmpAttendanceRportsPrams({this.projectId, this.shiftId, this.startShiftDate, this.endShiftDate});

   factory EmpAttendanceRportsPrams.fromJson(Map<String, dynamic> json) => _$EmpAttendanceRportsPramsFromJson(json);

   Map<String, dynamic> toJson() => _$EmpAttendanceRportsPramsToJson(this);
}

