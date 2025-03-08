// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_edit_punishment_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddEditPunishmentParams _$AddEditPunishmentParamsFromJson(
        Map<String, dynamic> json) =>
    AddEditPunishmentParams(
      id: json['id'] as int?,
      violationTypeId: json['violationTypeId'] as int?,
      violationTypeName: json['violationTypeName'] as String?,
      typesOfViolation: json['typesOfViolation'] as int?,
      typesOfViolationName: json['typesOfViolationName'] as String?,
      amountViolation: (json['amountViolation'] as num?)?.toDouble(),
      totalViolationDays: json['totalViolationDays'] as int?,
    );

Map<String, dynamic> _$AddEditPunishmentParamsToJson(
        AddEditPunishmentParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'violationTypeId': instance.violationTypeId,
      'violationTypeName': instance.violationTypeName,
      'typesOfViolation': instance.typesOfViolation,
      'typesOfViolationName': instance.typesOfViolationName,
      'amountViolation': instance.amountViolation,
      'totalViolationDays': instance.totalViolationDays,
    };
