// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_focus_point_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddFocusPointParams _$AddFocusPointParamsFromJson(Map<String, dynamic> json) =>
    AddFocusPointParams(
      id: json['id'] as int?,
      projectId: json['projectId'] as int?,
      focusPointsTypeId: json['focusPointsTypeId'] as int?,
      focusPointsPriorityId: json['focusPointsPriorityId'] as int?,
      focusPointName: json['focusPointName'] as String?,
      freeLanceType: json['freeLanceType'] as int?,
      focusPointId: json['focusPointId'] as String?,
      latitude: json['latitude'] as String?,
      longtude: json['longtude'] as String?,
      radius: json['radius'] as String?,
      focusPointsAreaId: json['focusPointsAreaId'] as int?,
      focusPointsTransactionId: json['focusPointsTransactionId'] as int?,
      listShift:
          (json['listShift'] as List<dynamic>?)?.map((e) => e as int).toList(),
      coverageBreak: json['coverageBreak'] as int?,
    );

Map<String, dynamic> _$AddFocusPointParamsToJson(
        AddFocusPointParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'focusPointsTypeId': instance.focusPointsTypeId,
      'focusPointsPriorityId': instance.focusPointsPriorityId,
      'focusPointName': instance.focusPointName,
      'freeLanceType': instance.freeLanceType,
      'focusPointId': instance.focusPointId,
      'latitude': instance.latitude,
      'longtude': instance.longtude,
      'radius': instance.radius,
      'focusPointsAreaId': instance.focusPointsAreaId,
      'coverageBreak': instance.coverageBreak,
      'focusPointsTransactionId': instance.focusPointsTransactionId,
      'listShift': instance.listShift,
    };
