import 'package:json_annotation/json_annotation.dart'; 

part 'employee_data_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class EmployeeDataParams {
  @JsonKey(name: 'search')
  String? search;
  @JsonKey(name: 'type')
  int? type;
  @JsonKey(name: 'pageNumber')
  int? pageNumber;
  @JsonKey(name: 'pageSize')
  int? pageSize;
  @JsonKey(name: 'successApprovedLevel')
  int? successApprovedLevel;

  EmployeeDataParams({this.search, this.type, this.pageNumber, this.pageSize, this.successApprovedLevel});

   factory EmployeeDataParams.fromJson(Map<String, dynamic> json) => _$EmployeeDataParamsFromJson(json);

   Map<String, dynamic> toJson() => _$EmployeeDataParamsToJson(this);
}