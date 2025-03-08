import 'package:json_annotation/json_annotation.dart';

part 'add_work_hazard_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class AddWorkHazardParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'hazardPriorityLevelId')
  int? hazardPriorityLevelId;
  @JsonKey(name: 'hazardTypeId')
  int? hazardTypeId;
  @JsonKey(name: 'hazardSatusId')
  int? hazardSatusId;
  String? hazardStatusName;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'description')
  String? description;

  AddWorkHazardParams(
      {this.id,
      this.hazardPriorityLevelId,
      this.hazardTypeId,
      this.hazardSatusId,
      this.hazardStatusName,
      this.projectId,
      this.companyId,
      this.shiftId,
      this.description});

  factory AddWorkHazardParams.fromJson(Map<String, dynamic> json) =>
      _$AddWorkHazardParamsFromJson(json);

  Map<String, dynamic> toJson() => _$AddWorkHazardParamsToJson(this);
}
