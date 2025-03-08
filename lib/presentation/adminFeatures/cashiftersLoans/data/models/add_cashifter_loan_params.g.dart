// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_cashifter_loan_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCashifterLoanParams _$AddCashifterLoanParamsFromJson(
        Map<String, dynamic> json) =>
    AddCashifterLoanParams(
      id: json['id'] as int?,
      companyId: json['companyId'] as int?,
      freelenceId: json['freelenceId'] as int?,
      loanTypeId: json['loanTypeId'] as int?,
      loanValue: json['loanValue'] as int?,
      deductPercentage: json['deductPercentage'] as int?,
    );

Map<String, dynamic> _$AddCashifterLoanParamsToJson(
        AddCashifterLoanParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'freelenceId': instance.freelenceId,
      'loanTypeId': instance.loanTypeId,
      'loanValue': instance.loanValue,
      'deductPercentage': instance.deductPercentage,
    };
