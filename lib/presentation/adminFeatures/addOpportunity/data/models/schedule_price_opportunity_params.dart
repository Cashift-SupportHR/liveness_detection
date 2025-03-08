import 'package:json_annotation/json_annotation.dart'; 



part 'schedule_price_opportunity_params.g.dart';
@JsonSerializable(ignoreUnannotated: false)
class SchedulePriceOpportunityParams {
  @JsonKey(name: 'comapnyId')
  int? comapnyId;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'jobId')
  int? jobId;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'workDate')
  String? workDate;

  SchedulePriceOpportunityParams({this.comapnyId, this.projectId, this.jobId, this.shiftId, this.workDate});

   factory SchedulePriceOpportunityParams.fromJson(Map<String, dynamic> json) => _$SchedulePriceOpportunityParamsFromJson(json);

   Map<String, dynamic> toJson() => _$SchedulePriceOpportunityParamsToJson(this);
}

