import 'package:json_annotation/json_annotation.dart'; 



part 'contract_conditions_dto.g.dart';
@JsonSerializable(ignoreUnannotated: false)
class ContractConditionsDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'conditionNumber')
  String? conditionNumber;
  @JsonKey(name: 'maxHours')
  int? maxHours;
  @JsonKey(name: 'isAddLastHours')
  bool? isAddLastHours;
  @JsonKey(name: 'lastHours')
  int? lastHours;
  @JsonKey(name: 'isAllowEditTime')
  bool? isAllowEditTime;
  @JsonKey(name: 'startAllowMinutes')
  int? startAllowMinutes;
  @JsonKey(name: 'endAllowMinutes')
  int? endAllowMinutes;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'jobId')
  int? jobId;
  @JsonKey(name: 'allowEditDateOpp')
  bool? allowEditDateOpp;

      ContractConditionsDto({this.id, this.conditionNumber, this.maxHours, this.isAddLastHours, this.lastHours, this.isAllowEditTime, this.startAllowMinutes, this.endAllowMinutes, this.companyId, this.projectId, this.jobId, this.allowEditDateOpp});

   factory ContractConditionsDto.fromJson(Map<String, dynamic> json) => _$ContractConditionsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ContractConditionsDtoToJson(this);
}

