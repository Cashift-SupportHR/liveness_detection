import 'package:json_annotation/json_annotation.dart'; 

part 'approve_reject_violation_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ApproveRejectViolationParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'typeViolation')
  int? typeViolation;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'status')
  int? status;

  ApproveRejectViolationParams({this.id, this.typeViolation, this.description, this.status});

   factory ApproveRejectViolationParams.fromJson(Map<String, dynamic> json) => _$ApproveRejectViolationParamsFromJson(json);

   Map<String, dynamic> toJson() => _$ApproveRejectViolationParamsToJson(this);
}

