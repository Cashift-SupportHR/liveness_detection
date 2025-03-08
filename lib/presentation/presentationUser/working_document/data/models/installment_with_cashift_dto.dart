import 'package:json_annotation/json_annotation.dart'; 

part 'installment_with_cashift_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class InstallmentWithCashiftDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'installmentCount')
  String? installmentCount;
  @JsonKey(name: 'certificateCost')
  int? certificateCost;
  @JsonKey(name: 'textPercentageInstallment')
  String? textPercentageInstallment;
  @JsonKey(name: 'paymentFees')
  int? paymentFees;
  @JsonKey(name: 'cashiftFees')
  int? cashiftFees;

  InstallmentWithCashiftDto({this.id, this.installmentCount, this.certificateCost, this.textPercentageInstallment, this.paymentFees, this.cashiftFees});

   factory InstallmentWithCashiftDto.fromJson(Map<String, dynamic> json) => _$InstallmentWithCashiftDtoFromJson(json);

   Map<String, dynamic> toJson() => _$InstallmentWithCashiftDtoToJson(this);
}

