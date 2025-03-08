// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'focus_point_by_id_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FocusPointByIdDto _$FocusPointByIdDtoFromJson(Map<String, dynamic> json) =>
    FocusPointByIdDto(
      id: json['id'] as int?,
      projectId: json['projectId'] as int?,
      projectName: json['projectName'] as String?,
      focusPointsTypeId: json['focusPointsTypeId'] as int?,
      focusPointsTypeName: json['focusPointsTypeName'] as String?,
      focusPointsName: json['focusPointsName'] as String?,
      focusPointsPriorityId: json['focusPointsPriorityId'] as int?,
      focusPointsPriorityName: json['focusPointsPriorityName'] as String?,
      freelanceTypeId: json['freelanceTypeId'] as int?,
      freelanceTypeName: json['freelanceTypeName'] as String?,
      focusPointId: json['focusPointId'] as String?,
      latitude: json['latitude'] as String?,
      longtude: json['longtude'] as String?,
      radius: json['radius'] as String?,
      focusPointsAreaId: json['focusPointsAreaId'] as int?,
      focusPointsAreaName: json['focusPointsAreaName'] as String?,
      focusPointsTransactionId: json['focusPointsTransactionId'] as int?,
      focusPointsTransactionName: json['focusPointsTransactionName'] as String?,
      listShifts: (json['listShifts'] as List<dynamic>?)
          ?.map((e) => ShiftFocusPointDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..coverageBreakId = json['coverageBreakId'] as int?
      ..coverageBreakName = json['coverageBreakName'] as String?;

Map<String, dynamic> _$FocusPointByIdDtoToJson(FocusPointByIdDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'focusPointsTypeId': instance.focusPointsTypeId,
      'focusPointsTypeName': instance.focusPointsTypeName,
      'focusPointsName': instance.focusPointsName,
      'focusPointsPriorityId': instance.focusPointsPriorityId,
      'focusPointsPriorityName': instance.focusPointsPriorityName,
      'freelanceTypeId': instance.freelanceTypeId,
      'freelanceTypeName': instance.freelanceTypeName,
      'focusPointId': instance.focusPointId,
      'latitude': instance.latitude,
      'longtude': instance.longtude,
      'radius': instance.radius,
      'focusPointsAreaId': instance.focusPointsAreaId,
      'focusPointsAreaName': instance.focusPointsAreaName,
      'focusPointsTransactionId': instance.focusPointsTransactionId,
      'focusPointsTransactionName': instance.focusPointsTransactionName,
      'listShifts': instance.listShifts,
      'coverageBreakId': instance.coverageBreakId,
      'coverageBreakName': instance.coverageBreakName,
    };
