import 'package:json_annotation/json_annotation.dart';

part 'add_cashifter_loan_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class AddCashifterLoanParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'companyId')
  int? companyId;
  @JsonKey(name: 'freelenceId')
  int? freelenceId;
  @JsonKey(name: 'loanTypeId')
  int? loanTypeId;
  @JsonKey(name: 'loanValue')
  int? loanValue;
  @JsonKey(name: 'deductPercentage')
  int? deductPercentage;

  AddCashifterLoanParams(
      {this.id, this.companyId, this.freelenceId, this.loanTypeId, this.loanValue, this.deductPercentage});

  factory AddCashifterLoanParams.fromJson(Map<String, dynamic> json) => _$AddCashifterLoanParamsFromJson(json);

  Map<String, dynamic> toJson() => _$AddCashifterLoanParamsToJson(this);
}
