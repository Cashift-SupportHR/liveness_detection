import 'package:json_annotation/json_annotation.dart'; 

part 'ban_employee_status_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class BanEmployeeStatusParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'type')
  int? type;

  BanEmployeeStatusParams({this.id, this.type});

   factory BanEmployeeStatusParams.fromJson(Map<String, dynamic> json) => _$BanEmployeeStatusParamsFromJson(json);

   Map<String, dynamic> toJson() => _$BanEmployeeStatusParamsToJson(this);
}

