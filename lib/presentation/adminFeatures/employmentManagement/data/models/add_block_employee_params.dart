import 'package:json_annotation/json_annotation.dart'; 

part 'add_block_employee_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class AddBlockEmployeeParams {
  @JsonKey(name: 'freeLancerId')
  int? freeLancerId;
  @JsonKey(name: 'banReason')
  String? banReason;

  AddBlockEmployeeParams({this.freeLancerId, this.banReason});

   factory AddBlockEmployeeParams.fromJson(Map<String, dynamic> json) => _$AddBlockEmployeeParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddBlockEmployeeParamsToJson(this);
}

