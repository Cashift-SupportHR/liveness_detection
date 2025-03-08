import 'package:json_annotation/json_annotation.dart'; 

part 'fetch_emp_map_prams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class FetchEmpMapPrams {
  @JsonKey(name: 'cityId')
  int? cityId;
  @JsonKey(name: 'jobId')
  int? jobId;

  FetchEmpMapPrams({this.cityId, this.jobId});

   factory FetchEmpMapPrams.fromJson(Map<String, dynamic> json) => _$FetchEmpMapPramsFromJson(json);

   Map<String, dynamic> toJson() => _$FetchEmpMapPramsToJson(this);
}

