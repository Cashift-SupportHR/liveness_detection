import 'package:json_annotation/json_annotation.dart'; 

part 'employee_opp_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class EmployeeOppParams {
  @JsonKey(name: 'approvelLevelId')
  int? approvelLevelId;
  @JsonKey(name: 'actionType')
  int? actionType;
  @JsonKey(name: 'oppId')
  int? oppId;
  @JsonKey(name: 'companyId')
  int? companyId;

  EmployeeOppParams({this.approvelLevelId, this.actionType, this.oppId, this.companyId});

   factory EmployeeOppParams.fromJson(Map<String, dynamic> json) => _$EmployeeOppParamsFromJson(json);

   Map<String, dynamic> toJson() => _$EmployeeOppParamsToJson(this);
}

