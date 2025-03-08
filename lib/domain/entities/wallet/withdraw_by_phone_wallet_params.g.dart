// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdraw_by_phone_wallet_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WithdrawByPhoneWalletParams _$WithdrawByPhoneWalletParamsFromJson(
        Map<String, dynamic> json) =>
    WithdrawByPhoneWalletParams(
      providerId: json['providerId'] as int?,
      projectId: json['projectId'] as int?,
      bankCode: json['bankCode'] as String?,
      type: json['type'] as int?,
      transferId: json['transferId'] as int?,
    );

Map<String, dynamic> _$WithdrawByPhoneWalletParamsToJson(
        WithdrawByPhoneWalletParams instance) =>
    <String, dynamic>{
      'providerId': instance.providerId,
      'projectId': instance.projectId,
      'bankCode': instance.bankCode,
      'type': instance.type,
      'transferId': instance.transferId,
    };
