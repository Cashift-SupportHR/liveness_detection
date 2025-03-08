// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_shiftsprams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewShiftsprams _$ReviewShiftspramsFromJson(Map<String, dynamic> json) =>
    ReviewShiftsprams(
      statusId: json['statusId'] as int?,
      pageNumber: json['pageNumber'] as int?,
      pageSize: json['pageSize'] as int?,
      searchString: json['searchString'] as String?,
    );

Map<String, dynamic> _$ReviewShiftspramsToJson(ReviewShiftsprams instance) =>
    <String, dynamic>{
      'statusId': instance.statusId,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'searchString': instance.searchString,
    };
