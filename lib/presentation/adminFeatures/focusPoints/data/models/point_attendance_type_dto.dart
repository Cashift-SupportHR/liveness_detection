import 'package:json_annotation/json_annotation.dart'; 

part 'point_attendance_type_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class PointAttendanceTypeDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  PointAttendanceTypeDto({this.id, this.name});

   factory PointAttendanceTypeDto.fromJson(Map<String, dynamic> json) => _$PointAttendanceTypeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$PointAttendanceTypeDtoToJson(this);
}

