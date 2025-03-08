import 'package:json_annotation/json_annotation.dart';

part 'add_period_pricing_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class AddPeriodPricingParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'seasonseId')
  int? seasonseId;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'shiftId')
  int? shiftId;
  @JsonKey(name: 'fromDay')
  int? fromDay;
  @JsonKey(name: 'toDay')
  int? toDay;
  @JsonKey(name: 'salary')
  int? salary;
  @JsonKey(name: 'setAsDefault')
  bool? setAsDefault;
  @JsonKey(name: 'isAllowEditPrice')
  bool? isAllowEditPrice;
  @JsonKey(name: 'jobId')
  int? jobId;

  AddPeriodPricingParams(
      {this.id, this.companyId, this.seasonseId, this.projectId, this.shiftId, this.fromDay, this.toDay, this.salary, this.setAsDefault, this.isAllowEditPrice, this.jobId});

  factory AddPeriodPricingParams.fromJson(Map<String, dynamic> json) => _$AddPeriodPricingParamsFromJson(json);

  Map<String, dynamic> toJson() => _$AddPeriodPricingParamsToJson(this);
}
