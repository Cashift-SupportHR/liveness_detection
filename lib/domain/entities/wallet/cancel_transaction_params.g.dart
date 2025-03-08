// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_transaction_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelTransactionParams _$CancelTransactionParamsFromJson(
        Map<String, dynamic> json) =>
    CancelTransactionParams(
      companyId: json['companyId'] as int?,
      headId: json['headId'] as int?,
      type: json['type'] as int?,
    );

Map<String, dynamic> _$CancelTransactionParamsToJson(
        CancelTransactionParams instance) =>
    <String, dynamic>{
      'companyId': instance.companyId,
      'headId': instance.headId,
      'type': instance.type,
    };
