import 'package:json_annotation/json_annotation.dart'; 

part 'action_follow_up_violation_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ActionFollowUpViolationParams {
  @JsonKey(name: 'contractViolationId')
  int? contractViolationId;
  @JsonKey(name: 'importantLevel')
  int? importantLevel;
  @JsonKey(name: 'actionDescription')
  String? actionDescription;

  ActionFollowUpViolationParams({this.contractViolationId, this.importantLevel, this.actionDescription});

   factory ActionFollowUpViolationParams.fromJson(Map<String, dynamic> json) => _$ActionFollowUpViolationParamsFromJson(json);

   Map<String, dynamic> toJson() => _$ActionFollowUpViolationParamsToJson(this);
}

