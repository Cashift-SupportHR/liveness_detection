import 'package:json_annotation/json_annotation.dart'; 

part 'ban_employee_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class BanEmployeeParams {
  @JsonKey(name: 'type')
  int? type;
  @JsonKey(name: 'search')
  String? search;
  @JsonKey(name: 'pageNumber')
  int? pageNumber;

  BanEmployeeParams({this.type, this.search, this.pageNumber});

   factory BanEmployeeParams.fromJson(Map<String, dynamic> json) => _$BanEmployeeParamsFromJson(json);

   Map<String, dynamic> toJson() => _$BanEmployeeParamsToJson(this);
}

