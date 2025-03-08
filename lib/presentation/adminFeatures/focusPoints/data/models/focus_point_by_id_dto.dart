import 'package:json_annotation/json_annotation.dart';
import 'package:shiftapp/presentation/adminFeatures/focusPoints/data/models/shift_focus_point_dto.dart';

part 'focus_point_by_id_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class FocusPointByIdDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'focusPointsTypeId')
  int? focusPointsTypeId;
  @JsonKey(name: 'focusPointsTypeName')
  String? focusPointsTypeName;
  @JsonKey(name: 'focusPointsName')
  String? focusPointsName;
  @JsonKey(name: 'focusPointsPriorityId')
  int? focusPointsPriorityId;
  @JsonKey(name: 'focusPointsPriorityName')
  String? focusPointsPriorityName;
  @JsonKey(name: 'freelanceTypeId')
  int? freelanceTypeId;
  @JsonKey(name: 'freelanceTypeName')
  String? freelanceTypeName;
  @JsonKey(name: 'focusPointId')
  String? focusPointId;
  @JsonKey(name: 'latitude')
  String? latitude;
  @JsonKey(name: 'longtude')
  String? longtude;
  @JsonKey(name: 'radius')
  String? radius;
  @JsonKey(name: 'focusPointsAreaId')
  int? focusPointsAreaId;
  @JsonKey(name: 'focusPointsAreaName')
  String? focusPointsAreaName;
  @JsonKey(name: 'focusPointsTransactionId')
  int? focusPointsTransactionId;
  @JsonKey(name: 'focusPointsTransactionName')
  String? focusPointsTransactionName;
  @JsonKey(name: 'listShifts')
  List<ShiftFocusPointDto>? listShifts;
  @JsonKey(name: 'coverageBreakId')
  int? coverageBreakId;
  @JsonKey(name: 'coverageBreakName')
  String? coverageBreakName;


  FocusPointByIdDto({this.id, this.projectId, this.projectName, this.focusPointsTypeId, this.focusPointsTypeName, this.focusPointsName, this.focusPointsPriorityId, this.focusPointsPriorityName, this.freelanceTypeId, this.freelanceTypeName, this.focusPointId, this.latitude, this.longtude, this.radius, this.focusPointsAreaId, this.focusPointsAreaName, this.focusPointsTransactionId, this.focusPointsTransactionName, this.listShifts});

   factory FocusPointByIdDto.fromJson(Map<String, dynamic> json) => _$FocusPointByIdDtoFromJson(json);

   Map<String, dynamic> toJson() => _$FocusPointByIdDtoToJson(this);
}

