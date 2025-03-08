import 'package:json_annotation/json_annotation.dart'; 

part 'term_condition_certificate_payment_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class TermConditionCertificatePaymentDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  TermConditionCertificatePaymentDto({this.id, this.name});

   factory TermConditionCertificatePaymentDto.fromJson(Map<String, dynamic> json) => _$TermConditionCertificatePaymentDtoFromJson(json);

   Map<String, dynamic> toJson() => _$TermConditionCertificatePaymentDtoToJson(this);
}

