// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_loan_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddLoanRequestParams _$AddLoanRequestParamsFromJson(
        Map<String, dynamic> json) =>
    AddLoanRequestParams(
      idNumber: json['idNumber'] as String?,
      loanType: json['loanType'] as int?,
      crmValue: json['crmValue'] as String?,
      loansAmount: json['loansAmount'] as int?,
      monthNumber: json['monthNumber'] as int?,
    );

Map<String, dynamic> _$AddLoanRequestParamsToJson(
        AddLoanRequestParams instance) =>
    <String, dynamic>{
      'idNumber': instance.idNumber,
      'loanType': instance.loanType,
      'crmValue': instance.crmValue,
      'loansAmount': instance.loansAmount,
      'monthNumber': instance.monthNumber,
    };
