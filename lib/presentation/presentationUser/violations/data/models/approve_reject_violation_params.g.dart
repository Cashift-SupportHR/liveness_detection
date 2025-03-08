// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approve_reject_violation_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApproveRejectViolationParams _$ApproveRejectViolationParamsFromJson(
        Map<String, dynamic> json) =>
    ApproveRejectViolationParams(
      id: json['id'] as int?,
      typeViolation: json['typeViolation'] as int?,
      description: json['description'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$ApproveRejectViolationParamsToJson(
        ApproveRejectViolationParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'typeViolation': instance.typeViolation,
      'description': instance.description,
      'status': instance.status,
    };
