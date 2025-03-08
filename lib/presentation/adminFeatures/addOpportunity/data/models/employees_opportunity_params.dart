import 'package:json_annotation/json_annotation.dart'; 

part 'employees_opportunity_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class EmployeesOpportunityParams {
  @JsonKey(name: 'approvelLevelId')
  int? approvelLevelId;
  @JsonKey(name: 'actionType')
  int? actionType;
  @JsonKey(name: 'oppId')
  int? oppId;
  @JsonKey(name: 'companyId')
  int? companyId;
  // Not use in Api
  @JsonKey(name: 'iaAllEmployees')
  int? isAllEmployees;
  // Not use in Api
  @JsonKey(name: 'title')
  String? title;

  EmployeesOpportunityParams({this.approvelLevelId, this.actionType, this.oppId, this.isAllEmployees, this.companyId, this.title});

   factory EmployeesOpportunityParams.fromJson(Map<String, dynamic> json) => _$EmployeesOpportunityParamsFromJson(json);

   Map<String, dynamic> toJson() => _$EmployeesOpportunityParamsToJson(this);
}

