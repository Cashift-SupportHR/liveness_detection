// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_details_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BalanceDetailsQuery _$BalanceDetailsQueryFromJson(Map<String, dynamic> json) =>
    BalanceDetailsQuery(
      statusId: json['statusId'] as int?,
      companyId: json['companyId'] as int?,
      headId: json['headId'] as int?,
      type: json['type'] as int?,
    );

Map<String, dynamic> _$BalanceDetailsQueryToJson(
        BalanceDetailsQuery instance) =>
    <String, dynamic>{
      'statusId': instance.statusId,
      'companyId': instance.companyId,
      'headId': instance.headId,
      'type': instance.type,
    };
