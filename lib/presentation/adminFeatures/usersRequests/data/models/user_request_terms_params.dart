import 'package:json_annotation/json_annotation.dart'; 

part 'user_request_terms_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class UserRequestTermsParams {
  @JsonKey(name: 'requestTypeCode')
  String? requestTypeCode;

  UserRequestTermsParams({this.requestTypeCode});

   factory UserRequestTermsParams.fromJson(Map<String, dynamic> json) => _$UserRequestTermsParamsFromJson(json);

   Map<String, dynamic> toJson() => _$UserRequestTermsParamsToJson(this);
}

