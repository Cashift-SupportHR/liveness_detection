import 'package:json_annotation/json_annotation.dart'; 

part 'user_request_terms_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class UserRequestTermsParams {
  @JsonKey(name: 'requestTypeCode')
  int? requestTypeCode;
  @JsonKey(name: 'requestStatusCode')
  int? requestStatusCode;

  UserRequestTermsParams({this.requestTypeCode, this.requestStatusCode});

   factory UserRequestTermsParams.fromJson(Map<String, dynamic> json) => _$UserRequestTermsParamsFromJson(json);

   Map<String, dynamic> toJson() => _$UserRequestTermsParamsToJson(this);
}

