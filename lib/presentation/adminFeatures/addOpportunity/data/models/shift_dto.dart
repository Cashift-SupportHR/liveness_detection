import 'package:json_annotation/json_annotation.dart'; 




part 'shift_dto.g.dart';
@JsonSerializable(ignoreUnannotated: false)
class ShiftDto {
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'listShift')
  List<ListShiftDto>? listShift;

  ShiftDto({this.description, this.listShift});

   factory ShiftDto.fromJson(Map<String, dynamic> json) => _$ShiftDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ShiftDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class ListShiftDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'shiftName')
  String? shiftName;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'startShift')
  String? startShift;
  @JsonKey(name: 'hoursCount')
  int? hoursCount;
  @JsonKey(name: 'jobId')
  int? jobId;

  ListShiftDto({this.id, this.shiftName, this.companyId, this.projectId, this.startShift, this.hoursCount});

   factory ListShiftDto.fromJson(Map<String, dynamic> json) => _$ListShiftDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ListShiftDtoToJson(this);
}

