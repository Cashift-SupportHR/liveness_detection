// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_wallet_prams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminWalletPrams _$AdminWalletPramsFromJson(Map<String, dynamic> json) =>
    AdminWalletPrams(
      filterId: json['filterId'] as int?,
      dateFilter: json['dateFilter'] as String?,
      nameFilter: json['nameFilter'] as String?,
      tabId: json['tabId'] as int?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      pageNumber: json['pageNumber'] as int?,
      pageSize: json['pageSize'] as int?,
    );

Map<String, dynamic> _$AdminWalletPramsToJson(AdminWalletPrams instance) =>
    <String, dynamic>{
      'filterId': instance.filterId,
      'tabId': instance.tabId,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'nameFilter': instance.nameFilter,
      'dateFilter': instance.dateFilter,
    };
