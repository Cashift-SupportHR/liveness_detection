// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_prams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionsPrams _$TransactionsPramsFromJson(Map<String, dynamic> json) =>
    TransactionsPrams(
      status: json['Status'] as String?,
      endDateTime: json['EndDateTime'] as String?,
      startDateTime: json['StartDateTime'] as String?,
      searchString: json['SearchString'] as String?,
    );

Map<String, dynamic> _$TransactionsPramsToJson(TransactionsPrams instance) =>
    <String, dynamic>{
      'Status': instance.status,
      if (instance.endDateTime case final value?) 'EndDateTime': value,
      if (instance.startDateTime case final value?) 'StartDateTime': value,
      if (instance.searchString case final value?) 'SearchString': value,
    };
