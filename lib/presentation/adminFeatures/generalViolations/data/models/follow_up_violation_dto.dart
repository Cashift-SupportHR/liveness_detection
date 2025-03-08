import 'package:json_annotation/json_annotation.dart'; 

part 'follow_up_violation_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class FollowUpViolationDto {
  @JsonKey(name: 'violationId')
  int? violationId;
  @JsonKey(name: 'violationType')
  String? violationType;
  @JsonKey(name: 'companyName')
  String? companyName;
  @JsonKey(name: 'dateOfViolationApplying')
  String? dateOfViolationApplying;
  @JsonKey(name: 'time')
  String? time;
  @JsonKey(name: 'streetName')
  String? streetName;
  @JsonKey(name: 'details')
  String? details;
  @JsonKey(name: 'imagesPath')
  List<String>? imagesPath;
  @JsonKey(name: 'adminAction')
  String? adminAction;
  @JsonKey(name: 'shiftAdminAction')
  String? shiftAdminAction;
  @JsonKey(name: 'importantLevel')
  String? importantLevel;
  @JsonKey(name: 'allowEdit')
  bool? allowEdit;

  FollowUpViolationDto({this.violationId, this.violationType, this.companyName, this.dateOfViolationApplying, this.time, this.streetName, this.details, this.imagesPath, this.adminAction, this.shiftAdminAction, this.importantLevel, this.allowEdit});

   factory FollowUpViolationDto.fromJson(Map<String, dynamic> json) => _$FollowUpViolationDtoFromJson(json);

   Map<String, dynamic> toJson() => _$FollowUpViolationDtoToJson(this);
}

