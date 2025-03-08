// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_requirements.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobRequirements _$JobRequirementsFromJson(Map<String, dynamic> json) =>
    JobRequirements(
      projectId: json['projectId'] as int?,
      ageFrom: json['ageFrom'] as int?,
      ageTo: json['ageTo'] as int?,
      gender: json['gender'] as String?,
      lengthFrom: json['lengthFrom'] as int?,
      lengthTo: json['lengthTo'] as int?,
      wieghtFrom: json['wieghtFrom'] as int?,
      wieghtTo: json['wieghtTo'] as int?,
      hoursCount: json['hoursCount'] as int?,
      specialization: json['specialization'] as String?,
    );

Map<String, dynamic> _$JobRequirementsToJson(JobRequirements instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'ageFrom': instance.ageFrom,
      'ageTo': instance.ageTo,
      'gender': instance.gender,
      'lengthFrom': instance.lengthFrom,
      'lengthTo': instance.lengthTo,
      'wieghtFrom': instance.wieghtFrom,
      'wieghtTo': instance.wieghtTo,
      'hoursCount': instance.hoursCount,
      'specialization': instance.specialization,
    };
