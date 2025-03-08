import 'package:json_annotation/json_annotation.dart'; 




part 'schedule_price_opportunity.g.dart';
@JsonSerializable(ignoreUnannotated: false)
class SchedulePriceOpportunity {
  @JsonKey(name: 'isAllowEditPrice')
  bool? isAllowEditPrice;
  @JsonKey(name: 'salary')
  double? salary;

  SchedulePriceOpportunity({this.isAllowEditPrice, this.salary});

   factory SchedulePriceOpportunity.fromJson(Map<String, dynamic> json) => _$SchedulePriceOpportunityFromJson(json);

   Map<String, dynamic> toJson() => _$SchedulePriceOpportunityToJson(this);
}

