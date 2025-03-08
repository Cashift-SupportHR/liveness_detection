// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covenant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CovenantDto _$CovenantDtoFromJson(Map<String, dynamic> json) => CovenantDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      projectId: json['projectId'] as int?,
      priorityNumber: json['priorityNumber'] as int?,
      attendanceList: json['attendanceList'] as List<dynamic>?,
    );

Map<String, dynamic> _$CovenantDtoToJson(CovenantDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'projectId': instance.projectId,
      'priorityNumber': instance.priorityNumber,
      'attendanceList': instance.attendanceList,
    };
