import 'package:json_annotation/json_annotation.dart';
import 'package:shiftapp/presentation/adminFeatures/focusPoints/data/models/shift_focus_point_dto.dart';

part 'focus_point_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class FocusPointDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'focusPointName')
  String? focusPointName;
  @JsonKey(name: 'projectName')
  String? projectName;
  @JsonKey(name: 'focusPointLookUp')
  String? focusPointLookUp;
  @JsonKey(name: 'freelanceType')
  String? freelanceType;
  @JsonKey(name: 'focusPointType')
  String? focusPointType;
  @JsonKey(name: 'addedDate')
  String? addedDate;
  @JsonKey(name: 'statusName')
  String? statusName;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'listShifts')
  List<ShiftFocusPointDto>? shifts;

  FocusPointDto({this.id,this.projectId,  this.image, this.focusPointName, this.projectName, this.focusPointLookUp, this.freelanceType, this.focusPointType, this.addedDate, this.statusName, this.shifts});

   factory FocusPointDto.fromJson(Map<String, dynamic> json) => _$FocusPointDtoFromJson(json);

   Map<String, dynamic> toJson() => _$FocusPointDtoToJson(this);
}

