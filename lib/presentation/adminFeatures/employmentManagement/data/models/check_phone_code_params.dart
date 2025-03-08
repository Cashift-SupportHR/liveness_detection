import 'package:json_annotation/json_annotation.dart'; 

part 'check_phone_code_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class CheckPhoneCodeParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'code')
  String? code;

  CheckPhoneCodeParams({this.id, this.code});

   factory CheckPhoneCodeParams.fromJson(Map<String, dynamic> json) => _$CheckPhoneCodeParamsFromJson(json);

   Map<String, dynamic> toJson() => _$CheckPhoneCodeParamsToJson(this);
}

