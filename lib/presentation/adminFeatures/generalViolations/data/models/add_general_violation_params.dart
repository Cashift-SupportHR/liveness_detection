import 'package:json_annotation/json_annotation.dart';

part 'add_general_violation_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class AddGeneralViolationParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'scheduleViolationId')
  int? scheduleViolationId;
  @JsonKey(name: 'scheduleEmployeeWorkId')
  int? scheduleEmployeeWorkId;

  AddGeneralViolationParams(
      {this.id,
      this.projectId,
      this.companyId,
      this.shiftId,
      this.scheduleViolationId,
      this.scheduleEmployeeWorkId});

  factory AddGeneralViolationParams.fromJson(Map<String, dynamic> json) =>
      _$AddGeneralViolationParamsFromJson(json);

  Map<String, dynamic> toJson() => _$AddGeneralViolationParamsToJson(this);
}
