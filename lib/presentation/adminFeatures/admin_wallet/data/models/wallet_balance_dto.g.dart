// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_balance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletBalanceDto _$WalletBalanceDtoFromJson(Map<String, dynamic> json) =>
    WalletBalanceDto(
      currentBalanceValue: json['currentBalanceValue'] as num?,
      totalPayed: json['totalPayed'] as num?,
      depositValue: json['depositValue'] as num?,
      pendingAmounts: json['pendingAmounts'] as num?,
    );

Map<String, dynamic> _$WalletBalanceDtoToJson(WalletBalanceDto instance) =>
    <String, dynamic>{
      'currentBalanceValue': instance.currentBalanceValue,
      'totalPayed': instance.totalPayed,
      'depositValue': instance.depositValue,
      'pendingAmounts': instance.pendingAmounts,
    };
