import 'package:json_annotation/json_annotation.dart'; 

part 'focus_points_types_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class FocusPointsTypesDto {
  @JsonKey(name: 'order')
  int? order;
  @JsonKey(name: 'focusPointTypeName')
  String? focusPointTypeName;
  @JsonKey(name: 'focusPointTypeCount')
  int? focusPointTypeCount;
  @JsonKey(name: 'imageFocusPointsType')
  String? imageFocusPointsType;
  @JsonKey(name: 'freelanceApply')
  List<FreelanceApply>? freelanceApply;

  FocusPointsTypesDto({this.order, this.focusPointTypeName, this.focusPointTypeCount, this.imageFocusPointsType, this.freelanceApply});

   factory FocusPointsTypesDto.fromJson(Map<String, dynamic> json) => _$FocusPointsTypesDtoFromJson(json);

   Map<String, dynamic> toJson() => _$FocusPointsTypesDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class FreelanceApply {
  @JsonKey(name: 'totalHourse')
  int? totalHourse;
  @JsonKey(name: 'deviceNumber')
  String? deviceNumber;
  @JsonKey(name: 'statusColor')
  String? statusColor;
  @JsonKey(name: 'statusName')
  String? statusName;
  @JsonKey(name: 'deviceName')
  String? deviceName;
  @JsonKey(name: 'imageFocusPoints')
  String? imageFocusPoints;
  @JsonKey(name: 'freelanceName')
  String? freelanceName;
  @JsonKey(name: 'freelanceType')
  String? freelanceType;
  @JsonKey(name: 'pointName')
  String? pointName;
  @JsonKey(name: 'startDateTime')
  String? startDateTime;
  @JsonKey(name: 'endDateTime')
  String? endDateTime;
  @JsonKey(name: 'isStart')
  bool? isStart;
  @JsonKey(name: 'isBreak')
  bool? isBreak;

  FreelanceApply({this.totalHourse, this.deviceNumber, this.statusColor, this.statusName, this.deviceName, this.imageFocusPoints, this.freelanceName, this.freelanceType, this.pointName, this.startDateTime, this.endDateTime, this.isStart, this.isBreak});

   factory FreelanceApply.fromJson(Map<String, dynamic> json) => _$FreelanceApplyFromJson(json);

   Map<String, dynamic> toJson() => _$FreelanceApplyToJson(this);
}

