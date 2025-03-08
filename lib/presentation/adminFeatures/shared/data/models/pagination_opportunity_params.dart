import 'package:json_annotation/json_annotation.dart';

part 'pagination_opportunity_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class PaginationOpportunityParams {
  @JsonKey(name: 'page')
  int? page;
  @JsonKey(name: 'pageSize')
  int? pageSize;
  @JsonKey(name: 'type')
  int? type;
  @JsonKey(name: 'projectId')
  int? projectId;
  @JsonKey(name: 'jobId')
  int? jobId;
  @JsonKey(name: 'startDate')
  String? startDate;
  @JsonKey(name: 'endDate')
  String? endDate;

  PaginationOpportunityParams({this.projectId, this.page, this.jobId, this.startDate, this.endDate, this.pageSize, this.type});

  factory PaginationOpportunityParams.fromJson(Map<String, dynamic> json) => _$PaginationOpportunityParamsFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationOpportunityParamsToJson(this);
}
