import 'package:json_annotation/json_annotation.dart'; 

part 'final_action_follow_up_violation_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class FinalActionFollowUpViolationParams {
  @JsonKey(name: 'contractViolationId')
  int? contractViolationId;
  @JsonKey(name: 'actionDescription')
  String? actionDescription;

  FinalActionFollowUpViolationParams({this.contractViolationId, this.actionDescription});

   factory FinalActionFollowUpViolationParams.fromJson(Map<String, dynamic> json) => _$FinalActionFollowUpViolationParamsFromJson(json);

   Map<String, dynamic> toJson() => _$FinalActionFollowUpViolationParamsToJson(this);
}

