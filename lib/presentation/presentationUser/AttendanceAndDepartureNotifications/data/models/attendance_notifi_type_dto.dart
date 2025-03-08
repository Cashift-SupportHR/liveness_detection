import 'package:json_annotation/json_annotation.dart'; 

part 'attendance_notifi_type_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AttendanceNotifiTypeDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'code')
  String? code;
  @JsonKey(name: 'iconePath')
  String? iconePath;

  AttendanceNotifiTypeDto({this.id, this.name, this.code, this.iconePath});

   factory AttendanceNotifiTypeDto.fromJson(Map<String, dynamic> json) => _$AttendanceNotifiTypeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$AttendanceNotifiTypeDtoToJson(this);
}

