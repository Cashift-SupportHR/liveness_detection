import 'package:json_annotation/json_annotation.dart'; 

part 'contract_condition_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class ContractConditionParams {
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'jobId')
  int? jobId;

  ContractConditionParams({this.projectId, this.jobId});

   factory ContractConditionParams.fromJson(Map<String, dynamic> json) => _$ContractConditionParamsFromJson(json);

   Map<String, dynamic> toJson() => _$ContractConditionParamsToJson(this);
}

