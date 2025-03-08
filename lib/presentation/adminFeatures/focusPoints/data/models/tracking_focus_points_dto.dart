// import 'package:json_annotation/json_annotation.dart';
//
// part 'tracking_focus_points_dto.g.dart';
//
// @JsonSerializable(ignoreUnannotated: true)
// class TrackingFocusPointsDto {
//   @JsonKey(name: 'projectName')
//   String? projectName;
//   @JsonKey(name: 'date')
//   String? date;
//   @JsonKey(name: 'shiftName')
//   String? shiftName;
//   @JsonKey(name: 'startShift')
//   String? startShift;
//   @JsonKey(name: 'endShift')
//   String? endShift;
//   @JsonKey(name: 'listShift')
//   List<FocusPointShift>? listShift;
//
//   TrackingFocusPointsDto({this.projectName, this.date, this.shiftName, this.startShift, this.endShift, this.listShift});
//
//    factory TrackingFocusPointsDto.fromJson(Map<String, dynamic> json) => _$TrackingFocusPointsDtoFromJson(json);
//
//    Map<String, dynamic> toJson() => _$TrackingFocusPointsDtoToJson(this);
// }
//
// @JsonSerializable(ignoreUnannotated: true)
// class FocusPointShift {
//   @JsonKey(name: 'shiftName')
//   String? shiftName;
//   @JsonKey(name: 'activeShift')
//   bool? activeShift;
//   @JsonKey(name: 'listFocusPointType')
//   List<ListFocusPointType>? listFocusPointType;
//
//   FocusPointShift({this.shiftName, this.activeShift, this.listFocusPointType});
//
//    factory FocusPointShift.fromJson(Map<String, dynamic> json) => _$FocusPointShiftFromJson(json);
//
//    Map<String, dynamic> toJson() => _$FocusPointShiftToJson(this);
// }
//
// @JsonSerializable(ignoreUnannotated: true)
// class ListFocusPointType {
//   @JsonKey(name: 'focusPointTypeName')
//   String? focusPointTypeName;
//   @JsonKey(name: 'focusPointTypeCount')
//   int? focusPointTypeCount;
//   @JsonKey(name: 'imageFocusPointsType')
//   String? imageFocusPointsType;
//   @JsonKey(name: 'freelanceApply')
//   List<FreelanceApply>? freelanceApply;
//
//   ListFocusPointType({this.focusPointTypeName, this.focusPointTypeCount, this.imageFocusPointsType, this.freelanceApply});
//
//    factory ListFocusPointType.fromJson(Map<String, dynamic> json) => _$ListFocusPointTypeFromJson(json);
//
//    Map<String, dynamic> toJson() => _$ListFocusPointTypeToJson(this);
// }
//
// @JsonSerializable(ignoreUnannotated: true)
// class FreelanceApply {
//   @JsonKey(name: 'totalHourse')
//   int? totalHourse;
//   @JsonKey(name: 'deviceNumber')
//   String? deviceNumber;
//   @JsonKey(name: 'statusColor')
//   String? statusColor;
//   @JsonKey(name: 'statusName')
//   String? statusName;
//   @JsonKey(name: 'deviceName')
//   String? deviceName;
//   @JsonKey(name: 'image')
//   String? image;
//   @JsonKey(name: 'freelanceName')
//   String? freelanceName;
//   @JsonKey(name: 'freelanceType')
//   String? freelanceType;
//   @JsonKey(name: 'pointName')
//   String? pointName;
//   @JsonKey(name: 'endDateTime')
//   String? endDateTime;
//   @JsonKey(name: 'isStart')
//   bool? isStart;
//   @JsonKey(name: 'startDateTime')
//   String? startDateTime;
//   @JsonKey(name: 'isBreak')
//   bool? isBreak;
//
//   FreelanceApply({this.totalHourse, this.deviceNumber, this.statusColor, this.statusName, this.deviceName, this.image, this.freelanceName, this.freelanceType, this.pointName, this.endDateTime, this.isStart, this.startDateTime, this.isBreak});
//
//    factory FreelanceApply.fromJson(Map<String, dynamic> json) => _$FreelanceApplyFromJson(json);
//
//    Map<String, dynamic> toJson() => _$FreelanceApplyToJson(this);
// }
//
