// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_by_exchange_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BalanceByExchangeParams _$BalanceByExchangeParamsFromJson(
        Map<String, dynamic> json) =>
    BalanceByExchangeParams(
      companyId: json['companyId'] as int?,
      exchangeId: json['exchangeId'] as int?,
      type: json['type'] as int?,
      headId: json['headId'] as int?,
    );

Map<String, dynamic> _$BalanceByExchangeParamsToJson(
        BalanceByExchangeParams instance) =>
    <String, dynamic>{
      'companyId': instance.companyId,
      'exchangeId': instance.exchangeId,
      'type': instance.type,
      'headId': instance.headId,
    };
