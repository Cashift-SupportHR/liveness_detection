import 'package:json_annotation/json_annotation.dart'; 

part 'terms_and_conditions_requests_prams.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class  TermsAndConditionsRequestsPrams {
  @JsonKey(name: 'requestStatusCode')
  String? requestStatusCode;
  @JsonKey(name: 'requestTypeCode')
  String? requestTypeCode;

   TermsAndConditionsRequestsPrams({this.requestStatusCode, this.requestTypeCode});

   factory  TermsAndConditionsRequestsPrams.fromJson(Map<String, dynamic> json) => _$TermsAndConditionsRequestsPramsFromJson(json);

   Map<String, dynamic> toJson() => _$TermsAndConditionsRequestsPramsToJson(this);
}

