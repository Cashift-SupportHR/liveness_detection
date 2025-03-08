import 'package:json_annotation/json_annotation.dart'; 

part 'working_document_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class WorkingDocumentDto {
  @JsonKey(name: 'benefits')
  List<BenefitDocument>? benefits;
  @JsonKey(name: 'payments')
  List<PaymentDocument>? payments;

  WorkingDocumentDto({this.benefits, this.payments});

   factory WorkingDocumentDto.fromJson(Map<String, dynamic> json) => _$WorkingDocumentDtoFromJson(json);

   Map<String, dynamic> toJson() => _$WorkingDocumentDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class BenefitDocument {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  BenefitDocument({this.id, this.name});

   factory BenefitDocument.fromJson(Map<String, dynamic> json) => _$BenefitDocumentFromJson(json);

   Map<String, dynamic> toJson() => _$BenefitDocumentToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class PaymentDocument {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'icon')
  String? icon;
  @JsonKey(name: 'code')
  String? code;


  PaymentDocument({this.id, this.name, this.description, this.icon, this.code});

   factory PaymentDocument.fromJson(Map<String, dynamic> json) => _$PaymentDocumentFromJson(json);

   Map<String, dynamic> toJson() => _$PaymentDocumentToJson(this);
}

