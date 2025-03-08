// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_new_user_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddNewUserParams _$AddNewUserParamsFromJson(Map<String, dynamic> json) =>
    AddNewUserParams(
      id: json['id'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      roleId: json['roleId'] as String?,
      companyId: json['companyId'] as int?,
      listProjects: (json['listProjects'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      listShifts:
          (json['listShifts'] as List<dynamic>?)?.map((e) => e as int).toList(),
      listBrand:
          (json['listBrand'] as List<dynamic>?)?.map((e) => e as int).toList(),
      level: json['level'] as int?,
      listArea: (json['listArea'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AddNewUserParamsToJson(AddNewUserParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'roleId': instance.roleId,
      'level': instance.level,
      'companyId': instance.companyId,
      'listProjects': instance.listProjects,
      'listShifts': instance.listShifts,
      'listBrand': instance.listBrand,
      'listArea': instance.listArea,
    };
