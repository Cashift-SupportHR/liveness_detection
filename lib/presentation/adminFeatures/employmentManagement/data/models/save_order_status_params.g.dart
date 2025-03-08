// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_order_status_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveOrderStatusParams _$SaveOrderStatusParamsFromJson(
        Map<String, dynamic> json) =>
    SaveOrderStatusParams(
      id: json['id'] as int?,
      isAccept: json['isAccept'] as int?,
      description: json['description'] as String?,
      descriptionConnect: json['descriptionConnect'] as String?,
      freeLanceId: json['freeLanceId'] as int?,
      isAllow: json['isAllow'] as bool?,
      listProject: (json['listProject'] as List<dynamic>?)
          ?.map((e) => ListProject.fromJson(e as Map<String, dynamic>))
          .toList(),
      listShift: (json['listShift'] as List<dynamic>?)
          ?.map((e) => ListShift.fromJson(e as Map<String, dynamic>))
          .toList(),
      isAcceptedForAllProject: json['isAcceptedForAllProject'] as int?,
      isAcceptedForAllShift: json['isAcceptedForAllShift'] as int?,
      successAprovedLevel: json['successAprovedLevel'] as int?,
    );

Map<String, dynamic> _$SaveOrderStatusParamsToJson(
        SaveOrderStatusParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isAccept': instance.isAccept,
      'description': instance.description,
      'descriptionConnect': instance.descriptionConnect,
      'freeLanceId': instance.freeLanceId,
      'isAllow': instance.isAllow,
      'listProject': instance.listProject,
      'listShift': instance.listShift,
      'isAcceptedForAllProject': instance.isAcceptedForAllProject,
      'isAcceptedForAllShift': instance.isAcceptedForAllShift,
      'successAprovedLevel': instance.successAprovedLevel,
    };

ListProject _$ListProjectFromJson(Map<String, dynamic> json) => ListProject(
      projectId: json['projectId'] as int?,
    );

Map<String, dynamic> _$ListProjectToJson(ListProject instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
    };

ListShift _$ListShiftFromJson(Map<String, dynamic> json) => ListShift(
      shiftHeadId: json['shiftHeadId'] as int?,
    );

Map<String, dynamic> _$ListShiftToJson(ListShift instance) => <String, dynamic>{
      'shiftHeadId': instance.shiftHeadId,
    };
