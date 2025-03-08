import 'package:json_annotation/json_annotation.dart'; 

part 'filter_shift_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class FilterShiftParams {
  @JsonKey(name: 'ProjectId')
  int? projectId;
  @JsonKey(name: 'JobId')
  int? jobId;

  FilterShiftParams({this.projectId, this.jobId});

   factory FilterShiftParams.fromJson(Map<String, dynamic> json) => _$FilterShiftParamsFromJson(json);

   Map<String, dynamic> toJson() => _$FilterShiftParamsToJson(this);
}

